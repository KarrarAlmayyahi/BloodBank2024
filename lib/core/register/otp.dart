import 'package:emdad/constants/constants.dart';
import 'package:flutter/material.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});
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
      body: const OtpForm(),
    );
  }
}

class OtpForm extends StatefulWidget {
  const OtpForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  final _formKey = GlobalKey<FormState>();
  final _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/slide.png', height: 50),
              const SizedBox(
                height: 50,
              ),
              Image.asset('assets/images/otp.png', height: 228),
              const SizedBox(
                height: 20,
              ),
              const Text('التحقق بواسطة OTP',
                  style: TextStyle(
                      fontFamily: 'ManchetteFineExtraBold', fontSize: 30)),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  '             تم ارسال رمز برسالة نصية على الرقم الظاهر في الاسفل  ',
                  style: TextStyle(
                      fontFamily: 'ManchetteFineMedium', fontSize: 16)),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: _otpController,
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: Color.fromRGBO(138, 126, 126, 1))),
                    labelText: 'ادخل رمز الكود',
                    labelStyle: TextStyle(
                        fontFamily: 'ManchetteFineMedium', fontSize: 18),
                    contentPadding: EdgeInsets.all(20.0)),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'يرجى ادخال الكود الصحيح';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
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
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('تمت المعالجة')),
                      );
                    }
                  },
                  child: const SizedBox(
                    width: 200,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(' تاكيد ',
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
