import 'package:emdad/core/register/otp.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
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
      body: SingleChildScrollView(
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
                  controller: _nameController,
                  decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,
                              color: Color.fromRGBO(138, 126, 126, 1))),
                      labelText: 'الاسم الثلاثي ',
                      labelStyle: TextStyle(
                          fontFamily: 'ManchetteFineMedium', fontSize: 18),
                      contentPadding: EdgeInsets.all(20.0)),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'رجاءا ادخل الاسم الثلاثي كاملا';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,
                              color: Color.fromRGBO(138, 126, 126, 1))),
                      labelText: 'البريد اللالكتروني',
                      labelStyle: TextStyle(
                          fontFamily: 'ManchetteFineMedium', fontSize: 18),
                      contentPadding: EdgeInsets.all(20.0)),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'رجاءا قم بادخال البريد الالكتروني ';
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
                              width: 1,
                              color: Color.fromRGBO(138, 126, 126, 1))),
                      labelText: 'الرقم السري',
                      labelStyle: TextStyle(
                          fontFamily: 'ManchetteFineMedium', fontSize: 18),
                      contentPadding: EdgeInsets.all(20.0)),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'رجاءا ادخل الرقم السري';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                          const Color.fromARGB(255, 232, 19, 60)),
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // ScaffoldMessenger.of(context).showSnackBar(
                        //   const SnackBar(content: Text('تمت المعالجة')),
                        // );
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Otp()),
                        );
                      }
                    },
                    child: const SizedBox(
                      width: 200,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(' إنشاء الحساب ',
                              style: TextStyle(
                                  color: Colors.white,
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
      ),
    );
  }
}
