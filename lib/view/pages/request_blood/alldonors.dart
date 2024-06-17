import 'dart:ui';

import 'package:emdad/constants/constants.dart';
import 'package:flutter/material.dart';


class AllDonors extends StatefulWidget {
  const AllDonors({super.key});

  @override
  State<AllDonors> createState() => _AllDonorsState();
}

List<Color> gradientColors = [
  const Color.fromARGB(255, 255, 189, 189),
  const Color.fromARGB(255, 255, 189, 189),
];

class _AllDonorsState extends State<AllDonors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(' كل المتبرعين ',
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
        ),
      ),
      body: Column(
        children: <Widget>[
          ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 100, sigmaY: 500),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: gradientColors
                        .map((color) => color.withOpacity(0.1))
                        .toList(),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            border: Border.fromBorderSide(BorderSide(
                                color: Color.fromARGB(255, 250, 99, 147),
                                width: 0.3)),
                            color: Colors.transparent),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/SelectedBlood.png'),
                            const Text('+AB',
                                style: TextStyle(
                                  fontFamily: 'ManchetteFineSemiBold',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ))
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('+20',
                              style: TextStyle(
                                  fontFamily: 'ManchetteFineSemiBold',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  color: primaryColor)),
                          SizedBox(
                            width: 5,
                          ),
                          Text(' متبرع متاح حاليا ',
                              style: TextStyle(
                                fontFamily: 'ManchetteFineSemiBold',
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5, // Number of donors
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(8, 0, 8, 3),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      border: Border.fromBorderSide(BorderSide(
                          color: Color.fromARGB(255, 250, 99, 147),
                          width: 0.3)),
                      color: Colors.transparent,
                    ),
                    child: ListTile(
                      leading: const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/person.png')),
                      title: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('محمد علي المياحي',
                              style: TextStyle(
                                fontFamily: 'ManchetteFineSemiBold',
                                fontSize: 18,
                              )),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: primaryColor,
                              ),
                              Text('حي النقيب ',
                                  style: TextStyle(
                                      fontFamily: 'ManchetteFineSemiBold',
                                      fontSize: 15,
                                      color:
                                          Color.fromARGB(255, 104, 105, 109)))
                            ],
                          )
                        ],
                      ),
                      trailing: Container(
                        padding: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          color:  primaryColor,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: const Text('5km',
                            style: TextStyle(
                                fontFamily: 'ManchetteFineSemiBold',
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: tertiaryColor)),
                      ),
                      onTap: () {
                        // Get.to(() => const DonorDetails());
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
