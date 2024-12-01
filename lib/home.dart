
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
                          0.5,
                          0.6,
                          0.7,
                        ],
                        colors: [
                          Colors.yellow.shade300,
                          Colors.redAccent,
                          Colors.indigo.shade300,
                          Colors.teal.shade300,
                        ]
                    )
                ),
                child: Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 150,),
                      const Text('ថ្នាំបាញ់',style:  TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0,
                      ),),
                      // const Text('ថ្នាំបាញ់',style: TextStyle(fontSize: 35,
                      // fontWeight: FontWeight.bold),),
                      const Text('រថយន្តលេខ1',
                        style:  TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35.0,
                        ),),
                      const SizedBox(height: 80,),
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
                                    builder: (context) => const CarDashboard(),),);},
                              splashColor: Colors.blueAccent,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:[
                                    const Text('ឡាន',style: TextStyle(
                                      fontSize: 30.0,
                                      color: Colors.pink,
                                    ),),
                                    const SizedBox(width: 30.0,),
                                    Image.asset('lib/icons/car.png',height: 40,width: 60,fit: BoxFit.cover,
                                    )]),
                            ),),
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
                            // child: InkWell(
                            //   onTap: () {
                            //     Navigator.push(
                            //         context,
                            //         MaterialPageRoute(
                            //             builder: (context) => const MotoDashboard()));},
                            //   splashColor: Colors.blueAccent,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:[
                                    const Text('ម៉ូតូ..',style: TextStyle(
                                      fontSize: 30.0,
                                      color: Colors.pink,
                                    ),),
                                    const SizedBox(width: 30.0,),
                                    Image.asset('lib/icons/motorbike.png',height: 40,width: 60,fit: BoxFit.cover,
                                    )]),
                            ),),
                        ),
                      // ),
                      const SizedBox(height: 80,),

                    ],//children


                  ),

                ),
              ),


            );
          }
      ),
    );
  }
}


