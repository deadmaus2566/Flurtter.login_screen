import 'package:flutter/material.dart';
import 'package:loggin_screen/pages/singin.dart';
import 'package:loggin_screen/pages/singup.dart';
import 'package:loggin_screen/registrarusuariuo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Tarea Login', initialRoute: 'Home', routes: {
      'Home': (context) => RegistrarUsuario(),
      'SingUp': (context) => SingUp(),
      'SingIn': (context) => SingIn(),
    });
  }
}
