import 'package:emdad/constants/constants.dart';
import 'package:emdad/core/menu/drawer.dart';
import 'package:emdad/view/pages/mainscreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Locale("ar"),
      home: Scaffold(
        body: WelcomeScreen(),
        drawer: GlobalDrawer(),
      ),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        color: tertiaryColor,
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/logo.png', height: 310),
              Image.asset('assets/images/logo2.jpeg'),
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                       primaryColor),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const mainscreen()),
                  );
                },
                child: const SizedBox(
                  width: 200,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('التالي',
                          style: TextStyle(
                              color: tertiaryColor,
                              fontFamily: 'ManchetteFineExtraBold',
                              fontSize: 20)),
                      FaIcon(
                        Icons.arrow_forward,
                        color: tertiaryColor,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
