import 'package:flutter/material.dart';

void main() {
  runApp(const SignApp());
}

class SignApp extends StatelessWidget {
  const SignApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignUp(),
    );
  }
}

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
        elevation: 0,
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 80.0,
                child: Image(image: AssetImage('assets/fantasma.png')),
              ),
              const SizedBox(
                height: 40.0,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'ToDo App',
                    style:
                        TextStyle(fontStyle: FontStyle.italic, fontSize: 18.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 40.0,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Nombre',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(style: BorderStyle.solid),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Usuario',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10.0),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    //Para agregar la lógica del login.
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              TextButton(
                  onPressed: () {
                    //Para agregar lógica.
                  },
                  child: const Text(
                    '¿Ya tienes una cuenta? Login',
                    style: TextStyle(color: Colors.blueAccent),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
