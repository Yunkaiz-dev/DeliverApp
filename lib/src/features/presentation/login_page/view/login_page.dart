import 'package:flutter/material.dart';
import 'package:myapp/route.dart';
import 'package:myapp/src/features/common_widgets/back_button.dart';
import 'package:myapp/src/features/common_widgets/my_button.dart';
import 'package:myapp/src/features/presentation/password_page/view/password_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/imagen.png',
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.40,
                  fit: BoxFit.cover,
                ),
                Positioned(
                    top: 40,
                    left: 40,
                    child: backButton(context, Colors.white)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Welcome Back',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('login into your account'),
                  SizedBox(
                    height: 20,
                  ),
                  emailinput(),
                  SizedBox(
                    height: 15,
                  ),
                  passwordinput(),
                  SizedBox(
                    height: 15,
                  ),
                  MyButton(
                    buttonText: 'login',
                    onTap: () {
                      //si el login es satisfactorio navegamos a la pantalla principal
                    },
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PasswordPage()));
                      },
                      child: Text(
                        'Forgot your password?',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          decoration:
                              TextDecoration.underline, // Subrayado azul
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text('Need an Account?'),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                          ),
                        ),
                      ),
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

  TextFormField emailinput() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.email_outlined,
          color: Colors.orange,
        ),
        hintText: 'user@gmail.com',
        labelText: 'Enter your Email',
        labelStyle: TextStyle(color: Colors.orange),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.orange,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.orange),
        ),
      ),
    );
  }
}

TextFormField passwordinput() {
  return TextFormField(
    obscureText: true,
    decoration: InputDecoration(
      prefixIcon: Icon(
        Icons.password_outlined,
        color: Colors.orange,
      ),
      hintText: 'Enter your password',
      labelText: 'Enter your password',
      labelStyle: TextStyle(color: Colors.orange),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.orange,
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.orange),
      ),
    ),
  );
}
