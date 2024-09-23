import 'package:flutter/material.dart';
import 'views/customfield.dart';
import 'views/custombutton.dart';

class Formpage extends StatefulWidget {
  const Formpage({super.key});

  @override
  _FormpageState createState() => _FormpageState();
}

class _FormpageState extends State<Formpage> {
  final _formKey = GlobalKey<FormState>();
  final txtController = TextEditingController();
  final txtController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Validation'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Sign In',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                CustomTextField(
                  controller_: txtController,
                  isPassword_: false,
                  error_: 'The username must not be empty!',
                  hintText_: 'Enter your username',
                  labelText_: 'USERNAME',
                ),
                const SizedBox(height: 16.0),
                CustomTextField(
                  controller_: txtController1,
                  isPassword_: true,
                  error_: 'The password must not be empty!',
                  hintText_: 'Enter your password',
                  labelText_: 'PASSWORD',
                ),
                const SizedBox(height: 16.0),
                CustomButton(
                  btnText_: 'Login',
                  onPressed_: () {
                    var input = txtController.text;
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('You entered $input')));
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
