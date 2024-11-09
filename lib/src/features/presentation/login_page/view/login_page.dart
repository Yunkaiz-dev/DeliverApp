import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/src/features/presentation/widgets/my_button.dart';
import '../../widgets/back_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //   SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.white),
    // );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/login_banner.jpeg',
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.40,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 40,
                  child: Container(
                    child: backButton(context, Colors.white),
                  ),
                ),
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
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Login into your account'),
                  SizedBox(
                    height: 30,
                  ),
                  emailInput(),
                  SizedBox(
                    height: 15,
                  ),
                  passwordInput(),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('forgot-password');
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.centerRight,
                      child: Text('Forgot your password?'),
                    ),
                  ),
                  MyButton(
                    buttonText: 'Login',
                    onTap: () {
                      //temporalmente navegamos a la pagina de Tap
                      Navigator.pushNamed(context, 'tabs');
                      //navegamos si nos logueamos correctamente
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Need and account?'),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('register');
                        },
                        child: Text(
                          'Register here',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange),
                        ),
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

Widget emailInput() {
  return TextFormField(
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
  );
}

Widget passwordInput() {
  return TextFormField(
    obscureText: true,
    decoration: InputDecoration(
      prefixIcon: Icon(
        Icons.password,
        color: Colors.orange,
      ),
      hintText: 'your password',
      labelText: 'Enter your password',
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
  );
}

// Widget loginButton(BuildContext context){
//   return GestureDetector(
//     onTap: () {
//       //temporalmente navegamos a la pagina de Tap
//       Navigator.pushNamed(context, 'tabs');
//       //navegamos si nos logueamos correctamente
//     },
//     child: Container(
//       margin: EdgeInsets.only(top: 30),
//       width: double.infinity,
//       height: 55,
//       decoration: BoxDecoration(
//           color: Colors.orange,
//           borderRadius: BorderRadius.circular(12)),
//       child: const Center(
//         child: Text(
//           'Login',
//           style: TextStyle(
//               color: Colors.white,
//               fontSize: 17,
//               fontWeight: FontWeight.bold),
//         ),
//       ),
//     ),
//   );
// }
