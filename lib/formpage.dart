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

  // Define the missing variables
  bool isPassword_ = true;
  String error_ = 'Please enter some text';
  String hintText_ = 'Enter your password';
  String labelText_ = 'Password';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Validation'),
      ),
      body: Form(
        key: _formKey,
        child: Center(
            child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Sign In'),
              CustomTextField(
                controller_: txtController,
                isPassword_: isPassword_,
                error_: error_,
                hintText_: hintText_,
                labelText_: labelText_,
              ),
              ElevatedButton(
                onPressed: () {
                  var input = txtController.text;
                  if (_formKey.currentState!.validate()) {
                    // Perform the desired action
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('You Entered $input')),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
