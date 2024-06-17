import 'package:emdad/constants/constants.dart';
import 'package:emdad/core/menu/drawer.dart';
import 'package:emdad/view/pages/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isSwitched = false;

  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => const HomeScreen());
              },
              icon: const Icon(Icons.arrow_forward_ios_outlined))
        ],
      ),
      drawer: const GlobalDrawer(),
      body: SingleChildScrollView(
        child: Container(
          color: tertiaryColor,
          child: Column(
            children: <Widget>[
              Container(
                color: primaryColor,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 15, 8, 15),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/images/profile.jpg'),
                              fit: BoxFit.cover),
                          borderRadius:
                              const BorderRadius.all((Radius.circular(100))),
                          boxShadow: [
                            BoxShadow(
                              color: fourthColor.withOpacity(0.25),
                              spreadRadius: 4,
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'محمد علي المياحي',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 234, 234, 234),
                                  fontFamily: 'ManchetteFineExtraBold',
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '  يجب ان تنتظر ٥٦ يوما بعد كل عملية تبرع',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 234, 234, 234),
                                  fontFamily: 'ManchetteFineMedium',
                                  fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 75,
                        width: 75,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/qrcode.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    left: 20, top: 18, right: 20, bottom: 30),
                height: MediaQuery.of(context).size.height * 0.13,
                width: MediaQuery.of(context).size.width / 0.5,
                decoration: BoxDecoration(
                  color: tertiaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              // Icon(Icons.water_drop, color: Colors.blue),
                              Image(
                                  image: AssetImage('assets/images/heart.png')),
                              Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: Text('20',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 117, 143, 164),
                                        fontFamily: 'ManchetteFineExtraBold',
                                        fontSize: 16)),
                              ),
                              Text('أنقذت حياة',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 117, 143, 164),
                                      fontFamily: 'ManchetteFineMedium',
                                      fontSize: 16))
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Image(
                                  image: AssetImage('assets/images/point.png')),
                              Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: Text('100',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 117, 143, 164),
                                        fontFamily: 'ManchetteFineExtraBold',
                                        fontSize: 17)),
                              ),
                              Text('النقاط الحالية',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 117, 143, 164),
                                      fontFamily: 'ManchetteFineMedium',
                                      fontSize: 17)),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Image(
                                  image: AssetImage(
                                      'assets/images/blood_profile.png')),
                              Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: Text('+ A',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 117, 143, 164),
                                        fontFamily: 'ManchetteFineExtraBold',
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Text('فصيلة الدم',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 117, 143, 164),
                                      fontFamily: 'ManchetteFineMedium',
                                      fontSize: 16))
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('أنا متاح للتبرع بالدم',
                            style: TextStyle(
                                color: fourthColor,
                                fontFamily: 'ManchetteFineExtraBold',
                                fontSize: 19,
                                fontWeight: FontWeight.bold)),
                        Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          },
                          activeTrackColor: primaryColor,
                          activeColor: primaryColor,
                        ),
                      ],
                    ),
                    const Divider(
                      color: Color.fromARGB(255, 198, 209, 219),
                      height: 30,
                      thickness: 0.5,
                      indent: 5,
                      endIndent: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(' تاريخ التبرع ',
                                style: TextStyle(
                                    color: fourthColor,
                                    fontFamily: 'ManchetteFineExtraBold',
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 6,
                            ),
                            Text(' باقي 2 يوم لاخر عملية تبرع بالدم',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 117, 143, 164),
                                    fontFamily: 'ManchetteFineSemiBold',
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        TextButton(
                          onPressed: () async {
                            final DateTime? picked = await showDatePicker(
                              context: context,
                              initialDate: selectedDate,
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2101),
                            );
                            if (picked != null && picked != selectedDate) {
                              setState(() {
                                selectedDate = picked;
                              });
                            }
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.calendar_today,
                                size: 22,
                                color: primaryColor,
                              ),
                              const SizedBox(height: 6),
                              Text("${selectedDate.toLocal()}".split(' ')[0],
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 117, 143, 164),
                                      fontFamily: 'ManchetteFineSemiBold',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Color.fromARGB(255, 198, 209, 219),
                      height: 30,
                      thickness: 0.5,
                      indent: 5,
                      endIndent: 5,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: ListView(
                        children: <Widget>[
                          ListTile(
                            title: const Text('ادارة عنوان السكن',
                                style: TextStyle(
                                    color: fourthColor,
                                    fontFamily: 'ManchetteFineExtraBold',
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold)),
                            trailing: const Icon(Icons.chevron_right),
                            onTap: () {
                              Get.to(() => const HomeScreen());
                            },
                          ),
                          ListTile(
                              title: const Text('المنطقة',
                                  style: TextStyle(
                                      color: fourthColor,
                                      fontFamily: 'ManchetteFineExtraBold',
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold)),
                              trailing: const Icon(Icons.chevron_right),
                              onTap: () {
                                Get.to(() => const HomeScreen());
                              }),
                          ListTile(
                              title: const Text('اخری',
                                  style: TextStyle(
                                      color: fourthColor,
                                      fontFamily: 'ManchetteFineExtraBold',
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold)),
                              trailing: const Icon(Icons.chevron_right),
                              onTap: () {
                                Get.to(() => const HomeScreen());
                              }),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
