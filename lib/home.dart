
import 'package:flutter/material.dart';
import 'package:khmerautocolor/color_search.dart';
import 'package:khmerautocolor/screen/car_screen/car_dashboard.dart';
import 'package:khmerautocolor/color/color.dart';
import 'package:khmerautocolor/screen/motocycle_screen/moto_dashboard.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: Builder(
          builder: (context) {
            return Scaffold(
              body: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: const [
                      0.1,
                      0.4,
                      0.7,
                      1.0,
                    ],
                    colors: [
                      Colors.blue.shade900,
                      Colors.indigo.shade600,
                      Colors.purple.shade400,
                      Colors.blue.shade200,
                    ],
                  ),
                ),

                // decoration: BoxDecoration(
                //   gradient: LinearGradient(
                //     begin: Alignment.bottomRight,
                //     end: Alignment.topLeft,
                //     stops: const [
                //       0.0,
                //       0.3,
                //       0.7,
                //       1.0,
                //     ],
                //     colors: [
                //       Colors.grey.shade800,
                //       Colors.grey.shade600,
                //       Colors.grey.shade400,
                //       Colors.white70,
                //     ],
                //   ),
                // ),

                child: Center(
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          const SizedBox(height: 250,),
                          const Text(
                            'ថ្នាំបាញ់រថយន្តលេខ1',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 40,),
                          Center(
                            child: SizedBox(
                              width: 250,
                              height: 80,
                              child: Material(
                                borderRadius: BorderRadius.circular(10.0),
                                elevation: 3,
                                color: Colors.white,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const CarDashboard(),
                                      ),
                                    );
                                  },
                                  splashColor: Colors.blueAccent,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        'ឡាន',
                                        style: TextStyle(
                                          fontSize: 30.0,
                                          color: Colors.pink,
                                        ),
                                      ),
                                      const SizedBox(width: 30.0,),
                                      Image.asset(
                                        'lib/icons/car.png',
                                        height: 40,
                                        width: 60,
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Center(
                            child: SizedBox(
                              width: 250,
                              height: 80,
                              child: Material(
                                borderRadius: BorderRadius.circular(10.0),
                                elevation: 3,
                                color: Colors.white,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'ម៉ូតូ',
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        color: Colors.pink,
                                      ),
                                    ),
                                    const SizedBox(width: 15.0,),
                                    Image.asset(
                                      'lib/icons/tuk_tuk.png',
                                      height: 30,
                                      width: 40,
                                      fit: BoxFit.cover,
                                    ),
                                    const SizedBox(width: 15,),
                                    Image.asset(
                                      'lib/icons/motorbike.png',
                                      height: 30,
                                      width: 40,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10,),

// search color by code
                          Center(
                            child: SizedBox(
                              width: 250,
                              height: 80,
                              child: Material(
                                borderRadius: BorderRadius.circular(10.0),
                                elevation: 3,
                                color: Colors.white,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const ColorSearch(),
                                      ),
                                    );
                                  },
                                  splashColor: Colors.blueAccent,
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'ស្វែងរកតាមលេខកូដពណ៌',
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      SizedBox(width: 15.0,),
                                      Icon(
                                        Icons.search, // Search icon from Flutter's Icon set
                                        size: 25.0,   // Adjust size to match the text
                                        color: Colors.black87, // Match color to text or customize
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Positioned(
                            bottom: 5, // 20px from the bottom of the screen
                            left: 0,
                            right: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center, // Centers the Row content horizontally
                              mainAxisSize: MainAxisSize.min, // Keeps the row compact
                              children: [
                                SizedBox(
                                  width: 130,
                                  height: 130,
                                  child: Image.asset(
                                    'lib/images/concept_paints_logo.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                const SizedBox(width: 20), // Add some spacing between the images
                                SizedBox(
                                  width: 70,
                                  height: 70,
                                  child: Image.asset(
                                    'lib/images/8K.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )


                    ],
                  )


                ),
              ),


            );
          }
      ),
    );
  }
}


