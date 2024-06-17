import 'package:emdad/constants/constants.dart';
import 'package:emdad/view/pages/info/info.dart';
import 'package:emdad/view/pages/profile/profile.dart';
import 'package:emdad/view/pages/request_blood/requestblood.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class GlobalDrawer extends StatelessWidget {
  const GlobalDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: double.infinity,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color:
                       primaryColor.withOpacity(0.85)),
              child: Column(
                children: <Widget>[
                  Container(
                      margin: const EdgeInsets.only(top: 60, bottom: 10),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/images/profile.jpg'),
                            fit: BoxFit.cover),
                        borderRadius:
                            const BorderRadius.all((Radius.circular(100))),
                        boxShadow: [
                          BoxShadow(
                            color:  fourthColor
                                .withOpacity(0.25),
                            spreadRadius: 4,
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      )),
                  Container(
                      height: 55,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(right: 8),
                      decoration: const BoxDecoration(
                        color: tertiaryColor,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                      ),
                      child: const Icon(Icons.water_drop_outlined,
                          size: 35, color: primaryColor)),
                  Container(
                      height: 55,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(right: 8),
                      child: const Icon(Icons.info_outline,
                          size: 35, color: tertiaryColor)),
                  Container(
                      height: 55,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(right: 8),
                      child: const Icon(Icons.person_2_outlined,
                          size: 35, color: tertiaryColor)),
                  Container(
                      height: 55,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(right: 8),
                      child: const Icon(Icons.settings_outlined,
                          size: 35, color: tertiaryColor)),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 244, 248, 251)
                      .withOpacity(0.85)),
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('محمد علي المياحي',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'ManchetteFineExtraBold',
                                    fontSize: 18)),
                            TextButton(
                              onPressed: () => Get.to(() => const Profile()),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.edit_square,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text('تعديل التفاصيل',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'ManchetteFineSemiBold',
                                          fontSize: 16)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          icon: const Icon(Icons.close_outlined),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(() => const RequestBlood());
                          },
                          child: const SizedBox(
                            height: 56,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('البحث عن متبرع',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontFamily: 'ManchetteFineSemiBold',
                                      fontSize: 20,
                                      color: Colors.black,
                                    )),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => const Info());
                          },
                          child: const SizedBox(
                            height: 56,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(' المبادئ التوجيهية للتبرع',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontFamily: 'ManchetteFineSemiBold',
                                      fontSize: 20,
                                      color: Colors.black,
                                    )),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => const Profile());
                          },
                          child: const SizedBox(
                            height: 56,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(' الملف الشخصي',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontFamily: 'ManchetteFineSemiBold',
                                      fontSize: 20,
                                      color: Colors.black,
                                    )),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => const Info());
                          },
                          child: const SizedBox(
                            height: 56,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('الإعدادات ',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontFamily: 'ManchetteFineSemiBold',
                                      fontSize: 20,
                                      color: Colors.black,
                                    )),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
 
  }
}
