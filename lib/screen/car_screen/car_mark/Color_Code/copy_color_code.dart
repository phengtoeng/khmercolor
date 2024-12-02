// import 'package:flutter/material.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
//
// const carColor = Color(0xfffffdfd);
// const textColor = Color(0xfffdfdfc);
// const indicatorColor = Color(0x98212121);
//
// // Replace with your Google Sheet ID and API key
// const String sheetId = '10grcwMQiaySGp130zoVwvtSdz6Mox5XXuskFyP-broU';  // Your Google Sheets ID
// const String apiKey = 'AIzaSyCWRYyI3dTmiu1TDgz00LMDejJD3zad3sE'; // Your API Key
// // const String googlePageId = '1G3';
//
// class Car_Color_Code extends StatefulWidget {
//   final String googlePageId; // Add this line to accept googlePageId
//
//   const Car_Color_Code({Key? key, required this.googlePageId}) : super(key: key);
//
//   @override
//   State<Car_Color_Code> createState() => _Car_Color_CodeState();
// }
//
// class _Car_Color_CodeState extends State<Car_Color_Code> with SingleTickerProviderStateMixin {
//   late TabController controller;
//   late Future<Map<String, List<List<String>>>> sheetData;
//
//   @override
//   void initState() {
//     super.initState();
//     controller = TabController(length: 2, vsync: this);
//     sheetData = fetchDataFromGoogleSheets(widget.googlePageId); // Use the passed googlePageId
//   }
//
//   Future<Map<String, List<List<String>>>> fetchDataFromGoogleSheets(String googlePageId) async {
//     try {
//       // Fetch data using googlePageId parameter
//       final urlTab1 = 'https://sheets.googleapis.com/v4/spreadsheets/$sheetId/values/$googlePageId!A1:D1000?key=$apiKey';
//       final responseTab1 = await http.get(Uri.parse(urlTab1));
//
//       final urlTab2 = 'https://sheets.googleapis.com/v4/spreadsheets/$sheetId/values/$googlePageId!F1:G1000?key=$apiKey';
//       final responseTab2 = await http.get(Uri.parse(urlTab2));
//
//       if (responseTab1.statusCode == 200 && responseTab2.statusCode == 200) {
//         final Map<String, dynamic> dataTab1 = jsonDecode(responseTab1.body);
//         final Map<String, dynamic> dataTab2 = jsonDecode(responseTab2.body);
//
//         final List<dynamic> valuesTab1 = dataTab1['values'] ?? [];
//         final List<dynamic> valuesTab2 = dataTab2['values'] ?? [];
//
//         List<List<String>> tab1Data = valuesTab1.map((row) {
//           return (row as List).map((e) => e.toString()).toList();
//         }).toList();
//
//         List<List<String>> tab2Data = valuesTab2.map((row) {
//           return (row as List).map((e) => e.toString()).toList();
//         }).toList();
//
//         int maxColumnsTab1 = tab1Data.fold(0, (max, row) => row.length > max ? row.length : max);
//         int maxColumnsTab2 = tab2Data.fold(0, (max, row) => row.length > max ? row.length : max);
//
//         for (var row in tab1Data) {
//           while (row.length < maxColumnsTab1) {
//             row.add("");
//           }
//         }
//
//         for (var row in tab2Data) {
//           while (row.length < maxColumnsTab2) {
//             row.add("");
//           }
//         }
//
//         return {'tab1': tab1Data, 'tab2': tab2Data};
//       } else {
//         throw Exception('Error fetching data. HTTP Status: ${responseTab1.statusCode} | ${responseTab2.statusCode}');
//       }
//     } catch (e) {
//       print('Error fetching data: $e');
//       rethrow;
//     }
//   }
//
//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: carColor,
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_ios),
//           onPressed: () => Navigator.of(context).pop(),
//           color: indicatorColor,
//         ),
//         toolbarHeight: 80,
//         backgroundColor: carColor,
//         bottom: TabBar(
//           indicatorColor: indicatorColor,
//           indicatorWeight: 2.0,
//           controller: controller,
//           tabs: [
//             Tab(child: Image.asset('lib/images/conceptpaint.png')),
//             Tab(child: Image.asset('lib/images/spray_can.png')),
//           ],
//         ),
//         shadowColor: Colors.transparent,
//       ),
//       body: FutureBuilder<Map<String, List<List<String>>>>(
//         future: sheetData,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text("Failed to load data"));
//           } else {
//             final data = snapshot.data!;
//             return TabBarView(
//               controller: controller,
//               children: [
//                 _buildDataTable(data['tab1']!),
//                 _buildDataTable(data['tab2']!),
//               ],
//             );
//           }
//         },
//       ),
//     );
//   }
//
//   Widget _buildDataTable(List<List<String>> data) {
//     return ListView(
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16.0),
//           child: Table(
//             children: data.map((row) => buildRow(row)).toList(),
//           ),
//         ),
//       ],
//     );
//   }
//
//   TableRow buildRow(List<String> cells) {
//     return TableRow(
//       children: cells.map((cell) {
//         return Container(
//           decoration: BoxDecoration(
//             border: cell.isEmpty
//                 ? null
//                 : Border.all(color: Colors.black, width: 1),
//           ),
//           padding: const EdgeInsets.all(12.0),
//           child: Center(
//             child: Text(
//               cell.isEmpty ? "" : cell,
//               style: TextStyle(fontSize: 14, color: Colors.black87,),
//             ),
//           ),
//         );
//       }).toList(),
//     );
//   }
// }




///working form 2//
// import 'package:flutter/material.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
//
// const carColor = Color(0xfffffdfd);
// const textColor = Color(0xfffdfdfc);
// const indicatorColor = Color(0x98212121);
//
// // Replace with your Google Sheet ID and API key
// const String sheetId = '10grcwMQiaySGp130zoVwvtSdz6Mox5XXuskFyP-broU';  // Your Google Sheets ID
// const String apiKey = 'AIzaSyCWRYyI3dTmiu1TDgz00LMDejJD3zad3sE'; // Your API Key
// const String googlePageId = '1G3';
//
// class CarColorCode extends StatefulWidget {
//   final String googlePageId; // Add this line to accept googlePageId
//
//   const CarColorCode({Key? key, required this.googlePageId}) : super(key: key);
//
//   @override
//   State<CarColorCode> createState() => _CarColorCodeState();
// }
//
// class _CarColorCodeState extends State<CarColorCode> with SingleTickerProviderStateMixin {
//   late TabController controller;
//   late Future<Map<String, List<List<String>>>> sheetData;
//
//   @override
//   void initState() {
//     super.initState();
//     controller = TabController(length: 2, vsync: this);
//     sheetData = fetchDataFromGoogleSheets(widget.googlePageId); // Use the passed googlePageId
//   }
//
//   Future<Map<String, List<List<String>>>> fetchDataFromGoogleSheets(String googlePageId) async {
//     try {
//       // Fetch data using googlePageId parameter
//       final urlTab1 = 'https://sheets.googleapis.com/v4/spreadsheets/$sheetId/values/$googlePageId!A1:D1000?key=$apiKey';
//       final responseTab1 = await http.get(Uri.parse(urlTab1));
//
//       final urlTab2 = 'https://sheets.googleapis.com/v4/spreadsheets/$sheetId/values/$googlePageId!F1:G1000?key=$apiKey';
//       final responseTab2 = await http.get(Uri.parse(urlTab2));
//
//       if (responseTab1.statusCode == 200 && responseTab2.statusCode == 200) {
//         final Map<String, dynamic> dataTab1 = jsonDecode(responseTab1.body);
//         final Map<String, dynamic> dataTab2 = jsonDecode(responseTab2.body);
//
//         final List<dynamic> valuesTab1 = dataTab1['values'] ?? [];
//         final List<dynamic> valuesTab2 = dataTab2['values'] ?? [];
//
//         List<List<String>> tab1Data = valuesTab1.map((row) {
//           return (row as List).map((e) => e.toString()).toList();
//         }).toList();
//
//         List<List<String>> tab2Data = valuesTab2.map((row) {
//           return (row as List).map((e) => e.toString()).toList();
//         }).toList();
//
//         int maxColumnsTab1 = tab1Data.fold(0, (max, row) => row.length > max ? row.length : max);
//         int maxColumnsTab2 = tab2Data.fold(0, (max, row) => row.length > max ? row.length : max);
//
//         for (var row in tab1Data) {
//           while (row.length < maxColumnsTab1) {
//             row.add("");
//           }
//         }
//
//         for (var row in tab2Data) {
//           while (row.length < maxColumnsTab2) {
//             row.add("");
//           }
//         }
//
//         return {'tab1': tab1Data, 'tab2': tab2Data};
//       } else {
//         throw Exception('Error fetching data. HTTP Status: ${responseTab1.statusCode} | ${responseTab2.statusCode}');
//       }
//     } catch (e) {
//       print('Error fetching data: $e');
//       rethrow;
//     }
//   }
//
//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: carColor,
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_ios),
//           onPressed: () => Navigator.of(context).pop(),
//           color: indicatorColor,
//         ),
//         toolbarHeight: 80,
//         backgroundColor: carColor,
//         bottom: TabBar(
//           indicatorColor: indicatorColor,
//           indicatorWeight: 2.0,
//           controller: controller,
//           tabs: [
//             Tab(child: Image.asset('lib/images/conceptpaint.png')),
//             Tab(child: Image.asset('lib/images/spray_can.png')),
//           ],
//         ),
//         shadowColor: Colors.transparent,
//       ),
//       body: FutureBuilder<Map<String, List<List<String>>>>(
//         future: sheetData,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text("Failed to load data"));
//           } else {
//             final data = snapshot.data!;
//             return TabBarView(
//               controller: controller,
//               children: [
//                 _buildDataTable(data['tab1']!),
//                 _buildDataTable(data['tab2']!),
//               ],
//             );
//           }
//         },
//       ),
//     );
//   }
//
//   Widget _buildDataTable(List<List<String>> data) {
//     return ListView(
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Table(
//             columnWidths: const {
//               0: FlexColumnWidth(2),
//               1: FlexColumnWidth(3),
//               2: FlexColumnWidth(2),
//               3: FlexColumnWidth(2),
//             },
//             border: TableBorder(
//               horizontalInside: BorderSide(color: Colors.grey.shade300),
//             ),
//             children: [
//               _buildHeaderRow(data.first),
//               ...data.skip(1).map((row) => _buildRow(row)).toList(),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
//
//   TableRow _buildHeaderRow(List<String> cells) {
//     return TableRow(
//       decoration: BoxDecoration(
//         color: Colors.blueGrey.shade100,
//         borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
//       ),
//       children: cells.map((cell) {
//         return Padding(
//           padding: const EdgeInsets.all(12.0),
//           child: Center(
//             child: Text(
//               cell,
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 16,
//                 color: Colors.black,
//               ),
//             ),
//           ),
//         );
//       }).toList(),
//     );
//   }
//
//   TableRow _buildRow(List<String> cells) {
//     bool isEvenRow = cells.first.hashCode.isEven;
//     return TableRow(
//       decoration: BoxDecoration(
//         color: isEvenRow ? Colors.grey.shade100 : Colors.white,
//         borderRadius: BorderRadius.circular(4),
//         boxShadow: [
//           if (isEvenRow)
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.1),
//               blurRadius: 4,
//               offset: Offset(0, 2),
//             ),
//         ],
//       ),
//       children: cells.map((cell) {
//         return Container(
//           padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
//           child: Center(
//             child: Text(
//               cell,
//               style: TextStyle(fontSize: 14, color: Colors.black87),
//             ),
//           ),
//         );
//       }).toList(),
//     );
//   }}
