import 'package:flutter/material.dart';
import 'package:loggin_screen/widgets/input_text.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        InputText(
          label: 'Email',
          hint: 'Ingrese su email',
          icon: Icon(Icons.email),
          keyboard: TextInputType.emailAddress,
          onChangued: (data) {
            _email = data;
          },
          validator: (data) {
            if (data!.contains('@')) {
              return 'Email Invalido';
            }
            return null;
          },
        ),
        Divider(
          height: 20.0,
        ),
        InputText(
          label: 'Password',
          hint: 'Ingrese su password',
          icon: Icon(Icons.lock),
          obscureText: true,
          onChangued: (data) {
            _password = data;
          },
          validator: (data) {
            if (data!.length < 6) {
              return 'Password Invalido';
            }
            return null;
          },
        ),
        Divider(
          height: 20.0,
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              if (_email == 'admin' && _password == '123456') {
                print('Login Correcto');
              } else {
                print('Login Incorrecto');
              }
            },
            child: Text('Login'),
          ),
        )
      ],
    ));
  }
}
