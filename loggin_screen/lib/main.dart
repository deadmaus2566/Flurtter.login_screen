import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:loggin_screen/pages/home_screen.dart';
import 'package:loggin_screen/pages/singin.dart';
import 'package:loggin_screen/pages/singup.dart';
import 'package:loggin_screen/registrarusuariuo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Tarea Login', initialRoute: '/', routes: {
      '/': (context) => RegistrarUsuario(),
      '/Sing_Up': (context) => SingUp(),
      '/Sing_In': (context) => SingIn(),
      '/home': (context) => Home_Screen(),
    });
  }
}
