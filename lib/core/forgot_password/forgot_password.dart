import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class ForgotPassword extends StatelessWidget {
  // final _auth = FirebaseAuth.instance;
  final _phoneController = TextEditingController();

  ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: const Text('Forgot Password'),
          ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Image.asset('assets/images/slide.png', height: 50),
              const SizedBox(
                height: 50,
              ),
              Image.asset('assets/images/forgot.png', height: 195),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                controller: _phoneController,
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1,
                            color: Color.fromRGBO(138, 126, 126, 1))),
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
              TextButton(
                child: const Text(
                  'إرسال الكود الى رقم الهاتف',
                  style: TextStyle(
                      fontFamily: 'ManchetteFineMedium',
                      fontSize: 20,
                      color: Color.fromARGB(255, 232, 19, 60)),
                ),
                onPressed: () async {
                  try {
                    // await _auth.sendPasswordResetEmail(
                    //   email: _emailController.text,
                    // );
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text('Password reset email sent')),
                    );
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Error: $e')),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
