import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/color_code_all.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blueGrey.shade900,
      ),
      home: ColorSearch(),
    );
  }
}

class ColorSearch extends StatefulWidget {
  const ColorSearch({Key? key}) : super(key: key);

  @override
  State<ColorSearch> createState() => _HomeState();
}
class _HomeState extends State<ColorSearch> {
  final TextEditingController _googlePageIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: const [0.1, 0.4, 0.7, 1.0],
            colors: [
              Colors.blue.shade900,
              Colors.indigo.shade600,
              Colors.purple.shade400,
              Colors.blue.shade200,
            ],
          ),
        ),
        child: Center(
          child: Stack(
            children: [
              Column(
                children: [
                  const SizedBox(height: 250),
                  const Text(
                    'ថ្នាំបាញ់រថយន្តលេខ1',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 40),
                  // Search Field and Button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextField(
                      controller: _googlePageIdController,
                      decoration: InputDecoration(
                        labelText: 'Enter Google Page ID',
                        labelStyle: TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.7),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _searchGoogleSheetData,
                    child: Text('Search'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
              Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Center(
                  child: Transform.scale(
                    scale: 0.4, // 50% of the original size
                    child: Image.asset(
                      'lib/images/concept_paints_logo.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _searchGoogleSheetData() {
    final googlePageId = _googlePageIdController.text;
    print("Entered Google Page ID: $googlePageId");  // Debugging print statement

    if (googlePageId.isNotEmpty) {
      // Show Google Page ID in Snackbar
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Searching for Google Page ID: $googlePageId')),
      );

      print("Navigating to CarColorCode with googlePageId: $googlePageId"); // Debugging log

      // Navigate to the CarColorCode screen with the Google Page ID
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CarColorCode(googlePageId: googlePageId),  // Correct constructor
        ),
      );

    } else {
      // Show error message if the Google Page ID is empty
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please enter a Google Page ID")),
      );
    }
  }
}
