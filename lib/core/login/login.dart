import 'package:emdad/constants/constants.dart';
import 'package:emdad/core/forgot_password/forgot_password.dart';
import 'package:emdad/navigation/nav_bottom_bar.dart';
import 'package:emdad/view/pages/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      )),
      resizeToAvoidBottomInset: false,
      body: const LoginForm(),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/slide.png', height: 50),
              const SizedBox(
                height: 50,
              ),
              Image.asset('assets/images/signup.png', height: 174),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                controller: _phoneController,
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: Color.fromRGBO(138, 126, 126, 1))),
                    labelText: 'رقم الهاتف',
                    labelStyle: TextStyle(
                        fontFamily: 'ManchetteFineMedium', fontSize: 18),
                    contentPadding: EdgeInsets.all(20.0)),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'رجاءا قم بادخال رقم الهاتف';
                  } else if (value.length != 11) {
                    return 'يجب ان يكون رقم الهاتف ١١ رقم';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: Color.fromRGBO(138, 126, 126, 1))),
                    labelText: 'الرقم السري',
                    labelStyle: TextStyle(
                        fontFamily: 'ManchetteFineMedium', fontSize: 18),
                    contentPadding: EdgeInsets.all(20.0)),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'الرجاء ادخال الرقم السري الصحيح';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPassword()),
                        );
                      },
                      child: const Text(
                        'هل نسيت الرقم السري ؟',
                        style: TextStyle(
                            fontFamily: 'ManchetteFineExtraBold', fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(primaryColor),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    // remove it after finish homescreen

                    // if (_formKey.currentState!.validate()) {
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //     const SnackBar(content: Text('تمت تسجيل الدخول بنجاح')),
                    //   );
                    // }
                    Get.to(() => const HomeScreen());
                  },
                  child: const SizedBox(
                    width: 200,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(' تسجيل الدخول ',
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
        ),
      ),
    );
  }
}
