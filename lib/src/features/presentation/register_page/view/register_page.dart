
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../widgets/back_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //   SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.white),
    // );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: backButton(context, Colors.black),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Create New Account',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InputField(hintTex: 'UserName', labelText: 'UserName', passwordChar: false, prefixIcon: Icons.person,),
                  InputField(hintTex: 'Email', labelText: 'Enter your Email', passwordChar: false, prefixIcon: Icons.email, textInputType: TextInputType.emailAddress,),
                  InputField(hintTex: 'Phone', labelText: 'Enter your Phone Number', passwordChar: false, prefixIcon: Icons.phone, textInputType: TextInputType.phone,),
                  InputField(hintTex: 'Date of Birth', labelText: 'Enter your DOB', passwordChar: false, prefixIcon: Icons.calendar_month,textInputType: TextInputType.datetime,),
                  InputField(hintTex: 'Password', labelText: 'Enter a Password', passwordChar: true, prefixIcon: Icons.password, textInputType: TextInputType.visiblePassword,),

                  registerButton(),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have and account?'),
                      SizedBox(width: 10,),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'login');
                        },
                        child: Text('Login here', style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold, color: Colors.orange
                        ),),
                      )
                    ],
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}


Widget registerButton(){
  return GestureDetector(
    onTap: () {

    },
    child: Container(
      margin: EdgeInsets.only(top: 30),
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(12)),
      child: const Center(
        child: Text(
          'Register',
          style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}

class InputField extends StatelessWidget {
  InputField({super.key, required this.hintTex, required this.labelText, required this.passwordChar, this.textInputType, required this.prefixIcon});

  final String hintTex;
  final String labelText;
  final bool passwordChar;
  final TextInputType? textInputType;
  final IconData prefixIcon;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: TextFormField(
        keyboardType: textInputType,
        obscureText: passwordChar,
        decoration: InputDecoration(
          prefixIcon: Icon(prefixIcon, color: Colors.orange,),
          hintText: hintTex,
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.orange),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.orange,
              )
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Colors.orange,
            ),
          ),
        ),
      ),
    );
  }
}



Widget emailInput(){
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      prefixIcon: Icon(Icons.email_outlined, color: Colors.orange,),
      hintText: 'user@email.com',
      labelText: 'Enter your email',
      labelStyle: TextStyle(color: Colors.orange),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.orange,
          )
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: Colors.orange,
        ),
      ),
    ),
  );
}

Widget passwordInput(){
  return TextFormField(
    obscureText: true,
    decoration: InputDecoration(
      prefixIcon: Icon(Icons.password, color: Colors.orange,),
      hintText: 'your password',
      labelText: 'Enter your password',
      labelStyle: TextStyle(color: Colors.orange),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.orange,
          )
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: Colors.orange,
        ),
      ),
    ),
  );
}




