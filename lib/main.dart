import 'package:app_1/screens/LoginScreen.dart';
import 'package:app_1/screens/RegistroScreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Fire());
}

class Fire extends StatelessWidget {
  const Fire({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://www.recreoviral.com/wp-content/uploads/2019/04/Fondo-de-pantalla-para-hombres-04-recreoviral.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '¡BIENVENIDO!',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                BotonLogin(context),
                SizedBox(height: 20),
                BotonRegistro(context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget BotonLogin(context) {
  return ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    },
    child: Text("Login"),
  );
}

Widget BotonRegistro(context) {
  return ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Registro()),
      );
    },
    child: Text("Registro"),
  );
}
