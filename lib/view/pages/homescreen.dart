// ignore_for_file: library_private_types_in_public_api

import 'package:emdad/constants/constants.dart';
import 'package:emdad/core/menu/drawer.dart';
import 'package:emdad/navigation/nav_bottom_bar.dart';
import 'package:emdad/view/pages/chart/chart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 245, 248, 250),
        elevation: 0,
      ),
      drawer: const GlobalDrawer(),
      // bottomNavigationBar: NavBottomBar(),
      body: SingleChildScrollView(
     
        child: Container(
          color: const Color.fromARGB(255, 245, 248, 250),
          height: MediaQuery.of(context).size.height,
          child: Column(children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FaIcon(
                  Icons.location_on_outlined,
                  color: primaryColor,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'كربلاء',
                    style: TextStyle(
                        fontFamily: 'ManchetteFineMedium',
                        fontSize: 20,
                        color: primaryColor),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 110,
                  height: 95,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color.fromARGB(255, 232, 239, 243),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 225, 238, 246),
                          spreadRadius: 0.5,
                          blurRadius: 0.5,
                          offset: Offset(0, 0.5),
                        )
                      ]),
                  child: const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('2K',
                            style: TextStyle(
                                fontFamily: 'ManchetteFineExtraBold',
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 107, 107, 107))),
                        Text(' انقذت حياة ',
                            style: TextStyle(
                                fontFamily: 'ManchetteFineMedium',
                                fontSize: 20,
                                color: Color.fromARGB(255, 107, 107, 107)))
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  width: 110,
                  height: 95,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: primaryColor,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 255, 189, 189),
                          spreadRadius: 0.5,
                          blurRadius: 0.5,
                          offset: Offset(0, 1),
                        )
                      ]),
                  child: const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('157',
                            style: TextStyle(
                                fontFamily: 'ManchetteFineExtraBold',
                                fontSize: 25,
                                color: Color.fromARGB(255, 255, 255, 255))),
                        Text('طلب تبرع دم',
                            style: TextStyle(
                                fontFamily: 'ManchetteFineMedium',
                                fontSize: 20,
                                color: Color.fromARGB(255, 255, 255, 255)))
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // chart comment
            const Expanded(
              child: LineChartSample2(),
            ),
          ]),
        ),
      
      ),
    );
  }
}
