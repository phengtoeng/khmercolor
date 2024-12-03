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
            stops: const [0.0, 0.5, 1.0],
            colors: [
              Color(0xFF34C759), // Apple Green
              Color(0xFFDDDCDA), // Soft warm orange
              Color(0xFF979797), // Light golden yellow
            ],
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                children: [
                  const SizedBox(height: 250),
                  const Text(
                    'ស្វែងរកពណ៌របស់អ្នក',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 25.0,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextField(
                      controller: _googlePageIdController,
                      decoration: InputDecoration(
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
            ),
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Center(
                child: Transform.scale(
                  scale: 0.4,
                  child: Image.asset(
                    'lib/images/concept_paints_logo.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 40,
              left: 16,
              child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white, size: 30),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
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
        SnackBar(content: Text('ដំណើរការស្វែងរកពណ៌: $googlePageId')),
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
