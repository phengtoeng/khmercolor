import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

const backgroundColor = Color(0xFFF5F5F5); // Light Apple-inspired background
const textColor = Color(0xFF333333); // Dark text color for readability
const accentColor = Color(0xFF007AFF); // Apple-like blue accent
const borderColor = Color(0xFFD1D1D1); // Soft border color

const String sheetId = '10grcwMQiaySGp130zoVwvtSdz6Mox5XXuskFyP-broU';
const String apiKey = 'AIzaSyCWRYyI3dTmiu1TDgz00LMDejJD3zad3sE';

class CarColorCode extends StatefulWidget {
  final String googlePageId;
  const CarColorCode({Key? key, required this.googlePageId}) : super(key: key);

  @override
  _CarColorCodeState createState() => _CarColorCodeState();
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
    final urlTab1 = 'https://sheets.googleapis.com/v4/spreadsheets/$sheetId/values/$googlePageId!A1:D1000?key=$apiKey';
    final responseTab1 = await http.get(Uri.parse(urlTab1));
    final urlTab2 = 'https://sheets.googleapis.com/v4/spreadsheets/$sheetId/values/$googlePageId!F1:G1000?key=$apiKey';
    final responseTab2 = await http.get(Uri.parse(urlTab2));

    if (responseTab1.statusCode == 200 && responseTab2.statusCode == 200) {
      final dataTab1 = jsonDecode(responseTab1.body)['values'] ?? [];
      final dataTab2 = jsonDecode(responseTab2.body)['values'] ?? [];

      return {
        'tab1': (dataTab1 as List).map((row) => (row as List).map((e) => e.toString()).toList()).toList(),
        'tab2': (dataTab2 as List).map((row) => (row as List).map((e) => e.toString()).toList()).toList(),
      };
    } else {
      throw Exception('Failed to fetch data');
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
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text('Car Color Codes', style: TextStyle(color: textColor)),
        backgroundColor: backgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(color: accentColor),
        bottom: TabBar(
          controller: controller,
          indicatorColor: accentColor,
          labelColor: accentColor,
          unselectedLabelColor: Colors.grey,
          tabs: [
            Tab(child: Image.asset('lib/images/conceptpaint.png')),
            Tab(child: Image.asset('lib/images/spray_can.png')),
          ],
        ),
      ),
      body: FutureBuilder<Map<String, List<List<String>>>>(
        future: sheetData,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Failed to load data", style: TextStyle(color: textColor)));
          } else {
            final data = snapshot.data!;
            return TabBarView(
              controller: controller,
              children: [
                _buildDataTable(data['tab1']!),
                _buildDataTable(data['tab2']!),
              ],
            );
          }
        },
      ),
    );
  }

  Widget _buildDataTable(List<List<String>> data) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Table(
        border: TableBorder.all(color: borderColor, width: 0.5),
        children: data.map((row) => buildRow(row)).toList(),
      ),
    );
  }

  TableRow buildRow(List<String> cells) {
    return TableRow(
      children: cells.map((cell) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            cell,
            style: TextStyle(fontSize: 16, color: textColor),
            textAlign: TextAlign.center,
          ),
        );
      }).toList(),
    );
  }
}
