
import 'package:flutter/material.dart';
import 'package:myapp/src/features/common_widgets/back_button.dart';
import 'package:myapp/src/features/common_widgets/my_button.dart';

class PasswordPage extends StatelessWidget {
  const PasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          // Añadir Stack para usar Positioned
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 60, // Espacio para el botón
                  ),
                  Text(
                    'Forgot Your Password',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Please enter your email address, you will receive a link to create a new password via email',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13), // Para centrar el texto
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  emailInput(),
                  SizedBox(
                    height: 15,
                  ),
                  MyButton(
                    buttonText: 'Reset Password',
                    onTap: () {
                      // Navegar a la página de inicio de sesión
                    },
                  ),
                ],
              ),
            ),
            Positioned(
              top: 40,
              left: 10, // Cambia este valor para moverlo más a la izquierda
              child: backButton(context, Colors.black),
            ),
          ],
        ),
      ),
    );
  }

// Suggested code may be subject to a license. Learn more: ~LicenseLog:4264880162.
  void showCustomAlertDialog(
      BuildContext context,
      ImageProvider<Object> imagepath,
      String title,
      String subtitle,
      String buttonText,
      Function buttonFunction) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          content: Column(
            mainAxisSize:
                MainAxisSize.min, // Ajusta el tamaño del diálogo a su contenido
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: imagepath,
                height: 100,
                width: 100,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              MyButton(
                buttonText: buttonText,
                onTap: () {
                  buttonFunction(); // Ejecuta la función pasada
                  Navigator.of(context)
                      .pop(); // Cierra el diálogo al hacer clic
                },
              ),
            ],
          ),
        );
      },
    );
  }

  // Widget para el input de email
  TextFormField emailInput() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'user@gmail.com',
        labelText: 'Enter your Email',
        labelStyle: TextStyle(color: Colors.orange),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.orange),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.orange),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.orange),
        ),
      ),
    );
  }
}
