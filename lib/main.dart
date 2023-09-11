// ignore_for_file: unused_element

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(
                    height: 80.0,
                    child: Image(
                      image: AssetImage('assets/fantasma.png'),
                    ),
                  ),
                  const SizedBox(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 9.0),
                      child: Text(
                        'ToDo App',
                        style: TextStyle(
                            fontStyle: FontStyle.italic, fontSize: 20.0),
                      ),
                    ),
                  ),
                  const SizedBox(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Usuario',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person), // Icono de usuario
                      ),
                      validator: _emailValidator),
                  const SizedBox(height: 20.0),
                  TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Contraseña',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock), // Icono de candado
                      ),
                      validator: _passwordValidator),
                  const SizedBox(height: 20.0),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Para agregar la lógica del login.
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: const Text(
                        'Iniciar Sesión',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  TextButton(
                    onPressed: () {
                      // Agregar lógica por si se le olvidó la contraseña.
                    },
                    child: const Text(
                      '¿Olvidaste tu contraseña?',
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

String? _emailValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Por favor, ingresa tu correo electrónico';
  }
  bool emailValid = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(value);
  if (!emailValid) {
    return "Ingresa una dirección de correo electrónico válida";
  }
  return null;
}

String? _passwordValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Por favor, ingresa tu contraseña';
  }
  // Espacio para agregar más validaciones en contraseña.
  return null;
}
