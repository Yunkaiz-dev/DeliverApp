//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../widgets/alert_dialog.dart';
import '../../widgets/back_button.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final TextEditingController _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  

  //final FirebaseAuth _auth = FirebaseAuth.instance;

  // Future<void> _resetPassword() async {
  //   if (_formKey.currentState!.validate()) {
  //     setState(() {
  //       _isLoading = true;
  //     });
  //     try {
  //       await _auth.sendPasswordResetEmail(email: _emailController.text.trim());
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(content: Text('Correo de restablecimiento enviado')),
  //       );
  //     } on FirebaseAuthException catch (e) {
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(content: Text(e.message ?? 'Error al enviar el correo')),
  //       );
  //     } finally {
  //       setState(() {
  //         _isLoading = false;
  //       });
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: backButton(context, Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Forgot Password',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Enter your email to reset your password',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.orange,
                  ),
                  hintText: 'user@email.com',
                  labelText: 'Enter your email',
                  labelStyle: TextStyle(color: Colors.orange),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Colors.orange,
                      )),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.orange,
                    ),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an email';
                  } else if (!RegExp(
                          r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$') // Simple Regex for email validation
                      .hasMatch(value)) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              _isLoading
                  ? CircularProgressIndicator()
                  : forgotPasswordButton(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget forgotPasswordButton(BuildContext context) {
  return GestureDetector(
    onTap: () {
      alertDialog(
          context,
          AssetImage('assets/images/lock.png'),
          'Your password has been reset',
          'You will receive an email to set up new password',
          'Done',
          () {
            Navigator.pushNamed(context, 'login');
          },
      );
    },
    child: Container(
      margin: EdgeInsets.only(top: 30),
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
          color: Colors.orange, borderRadius: BorderRadius.circular(12)),
      child: const Center(
        child: Text(
          'Send email',
          style: TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}


