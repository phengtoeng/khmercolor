import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

const carColor = Color(0xfffffdfd);
const textColor = Color(0xfffdfdfc);
const indicatorColor = Color(0xFF0065FD);

// Replace with your Google Sheet ID and API key
const String sheetId = '10grcwMQiaySGp130zoVwvtSdz6Mox5XXuskFyP-broU';  // Your Google Sheets ID
const String apiKey = 'AIzaSyCWRYyI3dTmiu1TDgz00LMDejJD3zad3sE'; // Your API Key
const String googlePageId = '1G3';

class CarColorCode extends StatefulWidget {
  final String googlePageId;

  const CarColorCode({Key? key, required this.googlePageId}) : super(key: key);

  @override
  State<CarColorCode> createState() => _CarColorCodeState();
}

class _CarColorCodeState extends State<CarColorCode> with SingleTickerProviderStateMixin {
  late TabController controller;
  late Future<Map<String, List<List<String>>>> sheetData;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
    sheetData = fetchDataFromGoogleSheets(widget.googlePageId);
  }

  Future<Map<String, List<List<String>>>> fetchDataFromGoogleSheets(String googlePageId) async {
    try {
      final urlTab1 = 'https://sheets.googleapis.com/v4/spreadsheets/$sheetId/values/$googlePageId!A1:D1000?key=$apiKey';
      final responseTab1 = await http.get(Uri.parse(urlTab1));

      final urlTab2 = 'https://sheets.googleapis.com/v4/spreadsheets/$sheetId/values/$googlePageId!F1:G1000?key=$apiKey';
      final responseTab2 = await http.get(Uri.parse(urlTab2));

      if (responseTab1.statusCode == 200 && responseTab2.statusCode == 200) {
        final Map<String, dynamic> dataTab1 = jsonDecode(responseTab1.body);
        final Map<String, dynamic> dataTab2 = jsonDecode(responseTab2.body);

        final List<dynamic> valuesTab1 = dataTab1['values'] ?? [];
        final List<dynamic> valuesTab2 = dataTab2['values'] ?? [];

        List<List<String>> tab1Data = valuesTab1.map((row) {
          return (row as List).map((e) => e.toString()).toList();
        }).toList();

        List<List<String>> tab2Data = valuesTab2.map((row) {
          return (row as List).map((e) => e.toString()).toList();
        }).toList();

        int maxColumnsTab1 = tab1Data.fold(0, (max, row) => row.length > max ? row.length : max);
        int maxColumnsTab2 = tab2Data.fold(0, (max, row) => row.length > max ? row.length : max);

        for (var row in tab1Data) {
          while (row.length < maxColumnsTab1) {
            row.add("");
          }
        }

        for (var row in tab2Data) {
          while (row.length < maxColumnsTab2) {
            row.add("");
          }
        }

        return {'tab1': tab1Data, 'tab2': tab2Data};
      } else {
        throw Exception('Error fetching data. HTTP Status: ${responseTab1.statusCode} | ${responseTab2.statusCode}');
      }
    } catch (e) {
      print('Error fetching data: $e');
      rethrow;
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: carColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
          color: indicatorColor,
        ),
        toolbarHeight: 80,
        backgroundColor: carColor,
        bottom: TabBar(
          indicatorColor: indicatorColor,
          indicatorWeight: 2.0,
          controller: controller,
          tabs: [
            Tab(child: Image.asset('lib/images/conceptpaint.png')),
            Tab(child: Image.asset('lib/images/spray_can.png')),
          ],
        ),
        shadowColor: Colors.transparent,
      ),
      body: FutureBuilder<Map<String, List<List<String>>>>(
        future: sheetData,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Failed to load data"));
          } else {
            final data = snapshot.data!;
            return TabBarView(
              controller: controller,
              children: [
                _buildDataView(data['tab1']!),
                _buildDataView(data['tab2']!),
              ],
            );
          }
        },
      ),
    );
  }

  Widget _buildDataView(List<List<String>> data) {
    if (data.isEmpty) {
      return Center(child: Text("No data available"));
    }

    // Get the first row (header row) to display above the table
    List<String> headerRow = data.isNotEmpty ? data.first : [];

    // Remove the first row from the data (we don't want it in the table)
    List<List<String>> tableData = data.skip(1).toList();

    return ListView(
      children: [
        // Display first row above the table
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: headerRow.isNotEmpty
              ? Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: headerRow.map((header) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  header,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              );
            }).toList(),
          )
              : Text("No header available"),
        ),
        // Display table below (excluding the first row)
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Table(
            columnWidths: Map.fromIterable(
              List.generate(headerRow.length, (index) => index),
              key: (index) => index,
              value: (_) => FlexColumnWidth(1),
            ),
            border: TableBorder(horizontalInside: BorderSide(color: Colors.grey.shade300)),
            children: [
              // Only add rows below the header
              ...tableData.map((row) => _buildRow(row)).toList(),
            ],
          ),
        ),
      ],
    );
  }

  TableRow _buildHeaderRow(List<String> cells) {
    return TableRow(
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade100,
        borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
      ),
      children: List.generate(cells.length, (index) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Text(
              cells[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
        );
      }),
    );
  }

  TableRow _buildRow(List<String> cells) {
    bool isEvenRow = cells.first.hashCode.isEven;
    return TableRow(
      decoration: BoxDecoration(
        color: isEvenRow ? Colors.grey.shade100 : Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          if (isEvenRow)
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
        ],
      ),
      children: cells.map((cell) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
          child: Center(
            child: Text(
              cell,
              style: TextStyle(fontSize: 14, color: Colors.black87),
            ),
          ),
        );
      }).toList(),
    );
  }
}
