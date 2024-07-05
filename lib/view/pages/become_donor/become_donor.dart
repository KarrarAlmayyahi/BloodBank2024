import 'dart:ui';

import 'package:emdad/constants/constants.dart';
import 'package:flutter/material.dart';

class BecomeDonor extends StatefulWidget {
  const BecomeDonor({super.key});

  @override
  State<BecomeDonor> createState() => _BecomeDonorState();
}

class _BecomeDonorState extends State<BecomeDonor> {
  final List<String> bloodTypes = [
    'A+',
    'B+',
    'AB+',
    'O+',
    'A-',
    'B-',
    'AB-',
    'O-'
  ];
  bool isChecked = false;
  int selectedIndex = 0;

  String selectedBloodType = 'O-';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('كن متبرع',
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 15, 20, 2),
            child: Text(
              'حدد فصيلة دمك ',
              style: TextStyle(
                fontFamily: 'ManchetteFineExtraBold',
                fontSize: 20,
                color: fourthColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 25, right: 10),
            child: Container(
              color: Colors.transparent,
              child: SizedBox(
                height: 90,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: bloodTypes.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        width: 90,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage(
                            selectedIndex == index
                                ? 'assets/images/SelectedBlood.png'
                                : 'assets/images/BloodIcon.png',
                          )),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: selectedIndex == index
                                ? Colors.red
                                : Colors.grey,
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                              border: Border.all(
                                color: secondaryColor,
                                width: 2,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                bloodTypes[index],
                                style: const TextStyle(
                                  fontFamily: 'ManchetteFineExtraBold',
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text(
              'ادرج معلوماتك',
              style: TextStyle(
                fontFamily: 'ManchetteFineExtraBold',
                fontSize: 20,
                color: fourthColor,
              ),
            ),
          ),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'الاسم', // Placeholder text
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontFamily: 'ManchetteFineMedium',
                    fontSize: 20,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(Icons.person_outlined,
                      color: Color.fromARGB(255, 250, 99, 147)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 250, 99, 147), width: 0.5),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 250, 99, 147), width: 0.5),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                style: const TextStyle(color: Colors.black),
              )),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'رقم الهاتف ', // Placeholder text
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontFamily: 'ManchetteFineMedium',
                    fontSize: 20,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(Icons.phone_android_outlined,
                      color: Color.fromARGB(255, 250, 99, 147)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 250, 99, 147), width: 0.5),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 250, 99, 147), width: 0.5),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                style: const TextStyle(color: Colors.black),
              )),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'العنوان', // Placeholder text
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontFamily: 'ManchetteFineMedium',
                    fontSize: 20,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(Icons.location_on_outlined,
                      color: Color.fromARGB(255, 250, 99, 147)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 250, 99, 147), width: 0.5),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 250, 99, 147), width: 0.5),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                style: const TextStyle(color: Colors.black),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.scale(
                scale: 1.5,
                child: Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                  shape: const CircleBorder(),
                  side: const BorderSide(
                    color: Color.fromARGB(255, 250, 99, 147),
                    width: 1,
                  ),
                  checkColor: Color.fromARGB(255, 250, 99, 147),
                ),
              ),
              const SizedBox(width: 5),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  'هل تريد ان تشارك معلوماتك مع الاشخاص الاخرين',
                  style: TextStyle(
                    fontFamily: 'ManchetteFineMedium',
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(primaryColor),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  child: const SizedBox(
                    width: 100,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(' تم ',
                            style: TextStyle(
                                color: tertiaryColor,
                                fontFamily: 'ManchetteFineExtraBold',
                                fontSize: 18)),
                        SizedBox(
                          width: 2,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

List<Color> gradientColors = [
  const Color.fromARGB(255, 255, 189, 189),
  const Color.fromARGB(255, 255, 189, 189),
];
