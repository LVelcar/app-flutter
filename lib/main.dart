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
      appBar: AppBar(
        title: const Text('ToDo App'),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(60.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 80.0,
                child: Image(
                  image: AssetImage('assets/fantasma.png'),
                ),
              ),
              const SizedBox(
                //height: 30.0,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 9.0),
                  child: Text(
                    'ToDo App',
                    style:
                        TextStyle(fontStyle: FontStyle.italic, fontSize: 20.0),
                  ),
                ),
              ),
              const SizedBox(
                //height: 30.0,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 8.0), // Añade margen vertical
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Usuario',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20.0),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    //Para agregar la lógica del login.
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
                    //Agregar lógica por si se le olvidó la contraseña.
                  },
                  child: const Text(
                    '¿Olvidaste tu contrsaeña?',
                    style: TextStyle(color: Colors.blueAccent),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
