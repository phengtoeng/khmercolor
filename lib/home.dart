
import 'package:flutter/material.dart';
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
                                    SizedBox(width: 15,),
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
                          const SizedBox(height: 80,),
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


