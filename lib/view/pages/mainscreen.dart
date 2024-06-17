// ignore_for_file: camel_case_types, file_names
import 'package:emdad/constants/constants.dart';
import 'package:emdad/core/login/login.dart';
import 'package:emdad/core/register/register.dart';
import 'package:flutter/material.dart';

class mainscreen extends StatelessWidget {
  const mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: tertiaryColor,
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/welcome.png', height: 360),
              const SizedBox(
                height: 50,
              ),
              const SizedBox(
                width: 287,
                height: 150,
                child: Text(
                  ' ساهم في انقاذ حياة اشخاص هم في امس الحاجة اليك ',
                  style: TextStyle(
                      color: Color.fromARGB(255, 99, 92, 92),
                      fontFamily: 'ManchetteFineSemiBold',
                      fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              // Image.asset(
              //   'assets/images/blood.jpg',
              //   height: 317,
              //   width: 130,
              // ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                      const Color.fromARGB(255, 255, 255, 255)),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: const BorderSide(color: primaryColor)),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Register()),
                  );
                },
                child: const SizedBox(
                  width: 200,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('إنشاء حساب',
                          style: TextStyle(
                              color: primaryColor,
                              fontFamily: 'ManchetteFineExtraBold',
                              fontSize: 18)),
                      SizedBox(
                        width: 2,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(primaryColor),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                },
                child: const SizedBox(
                  width: 200,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('تسجيل الدخول',
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
            ],
          ),
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: const Center(
        child: Text('Login Form Goes Here'),
      ),
    );
  }
}
