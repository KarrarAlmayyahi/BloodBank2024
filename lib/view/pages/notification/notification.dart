import 'dart:ui';

import 'package:emdad/constants/constants.dart';
import 'package:emdad/view/pages/become_donor/become_donor.dart';
import 'package:flutter/material.dart';

class notify extends StatelessWidget {
  const notify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الاشعارات',
            style:
                TextStyle(fontFamily: 'ManchetteFineExtraBold', fontSize: 25)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.1))
                  .toList(),
            ),
          ),
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 100, sigmaY: 500),
              child: Container(
                color: Colors.transparent,
              ),
            ),
          ),
        ), // Match the AppBar color with the background
        elevation: 0, // Remove shadow
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 4,
          decoration: BoxDecoration(
            color: primaryColor.withOpacity(0.85),
            borderRadius: const BorderRadius.all((Radius.circular(20))),
            boxShadow: [
              BoxShadow(
                color: fourthColor.withOpacity(0.25),
                spreadRadius: 2,
                blurRadius: 2,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage('assets/images/profile.jpg'),
                                fit: BoxFit.cover),
                            borderRadius:
                                const BorderRadius.all((Radius.circular(50))),
                            boxShadow: [
                              BoxShadow(
                                color: fourthColor.withOpacity(0.25),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: const Offset(0, 1),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          'محمد علي المياحي',
                          style: TextStyle(
                              fontFamily: 'ManchetteFineExtraBold',
                              fontSize: 20,
                              color: tertiaryColor),
                        ),
                      ],
                    ),
                    const Text('الان',
                        style: TextStyle(
                            fontFamily: 'ManchetteFineExtraBold',
                            fontSize: 17,
                            color: tertiaryColor))
                  ],
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    Icon(
                      Icons.location_on_outlined,
                      color: tertiaryColor,
                    ),
                    Text(
                      'العنوان :-',
                      style: TextStyle(
                          fontFamily: 'ManchetteFineExtraBold',
                          fontSize: 17,
                          color: tertiaryColor),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'باب بغداد',
                      style: TextStyle(
                          fontFamily: 'ManchetteFineExtraBold',
                          fontSize: 17,
                          color: tertiaryColor),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const Text(
                  'مطلوب بشكل عاجل دم A+',
                  style: TextStyle(
                      fontFamily: 'ManchetteFineExtraBold',
                      fontSize: 22,
                      color: tertiaryColor),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Handle button press
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: tertiaryColor,
                      ),
                      child: const Text('قبول',
                          style: TextStyle(
                              fontFamily: 'ManchetteFineMedium',
                              fontSize: 18,
                              color: fourthColor)),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Handle button press
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: tertiaryColor,
                      ),
                      child: const Text('رفض',
                          style: TextStyle(
                              fontFamily: 'ManchetteFineMedium',
                              fontSize: 18,
                              color: fourthColor)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
