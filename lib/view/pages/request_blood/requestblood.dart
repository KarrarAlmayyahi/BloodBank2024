import 'dart:ui';
import 'package:emdad/constants/constants.dart';
import 'package:emdad/view/pages/request_blood/alldonors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/route_manager.dart';

class RequestBlood extends StatelessWidget {
  const RequestBlood({super.key});

  @override
  Widget build(BuildContext context) {
    return const BloodTypeSelectionPage();
  }
}

List<Color> gradientColors = [
  const Color.fromARGB(255, 255, 189, 189),
  const Color.fromARGB(255, 255, 189, 189),
];

class BloodTypeSelectionPage extends StatefulWidget {
  const BloodTypeSelectionPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BloodTypeSelectionPageState createState() => _BloodTypeSelectionPageState();
}

class _BloodTypeSelectionPageState extends State<BloodTypeSelectionPage> {
  String selectedBloodType = 'O-';
  int unitCount = 1;

  @override
  Widget build(BuildContext context) {
    List<String> bloodTypes = [
      'AB+',
      'B+',
      'A+',
      'O+',
      'AB-',
      'B-',
      'A-',
      'O-'
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('إختيار فصيلة الدم',
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
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25, bottom: 25),
            child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: gradientColors
                        .map((color) => color.withOpacity(0.3))
                        .toList(),
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 1, sigmaY: 100),
                  child: Container(
                    color: Colors.transparent,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 5.0,
                      children: bloodTypes.map((type) {
                        bool isSelected = selectedBloodType == type;
                        return Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ChoiceChip(
                            backgroundColor: Colors.transparent,
                            selectedColor: Colors.transparent,
                            label: Column(
                              children: <Widget>[
                                Image.asset(
                                  isSelected
                                      ? 'assets/images/SelectedBlood.png'
                                      : 'assets/images/BloodIcon.png',
                                  width: 52,
                                  height: 40,
                                ),
                                Text(type,
                                    style: const TextStyle(
                                      fontFamily: 'ManchetteFineSemiBold',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    )),
                              ],
                            ),
                            selected: isSelected,
                            onSelected: (bool selected) {
                              setState(() {
                                selectedBloodType = type;
                              });
                            },
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  color: Color.fromARGB(255, 250, 99, 147),
                                  width: 0.3), // change as needed
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                )),
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Color.fromARGB(255, 221, 221, 221),
                ),
                alignment: Alignment.center,
                height: 48,
                width: 150,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      Icons.bloodtype,
                      color: primaryColor,
                    ),
                    Text(
                      ' عدد علب الدم ',
                      style: TextStyle(
                          fontFamily: 'ManchetteFineExtraBold',
                          fontSize: 18,
                          color: primaryColor),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  color: primaryColor,
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.add),
                      color: tertiaryColor,
                      onPressed: () {
                        setState(() {
                          unitCount++;
                        });
                      },
                    ),
                    Text('$unitCount',
                        style: const TextStyle(
                            fontSize: 24,
                            color: tertiaryColor,
                            fontFamily: 'ManchetteFineExtraBold')),
                    IconButton(
                      icon: const Icon(Icons.remove),
                      color: tertiaryColor,
                      onPressed: () {
                        setState(() {
                          if (unitCount > 1) unitCount--;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              // Confirm donation logic
            },
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(
                   primaryColor),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            child: Container(
              alignment: Alignment.center,
              width: 200,
              height: 50,
              child: const Text(' حالة طارئة ',
                  style: TextStyle(
                      color: tertiaryColor,
                      fontFamily: 'ManchetteFineExtraBold',
                      fontSize: 20)),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Text('أو',
              style: TextStyle(
                  fontFamily: 'ManchetteFineExtraBold', fontSize: 25)),
          const SizedBox(
            height: 25,
          ),
          Container(
            width: 150,
            height: 50,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color.fromARGB(255, 221, 221, 221),
            ),
            child: TextButton.icon(
                onPressed: () {
                  Get.to(() => const AllDonors());
                },
                icon: const Icon(
                  Icons.date_range_outlined,
                  color: primaryColor,
                ),
                label: const Text('تاريخ الحجز',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'ManchetteFineExtraBold',
                        fontSize: 18))),
          )
        ],
      ),
    );
  }
}
