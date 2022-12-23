import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loggin_screen/pages/home_screen.dart';
import 'package:loggin_screen/pages/singin.dart';
import 'package:loggin_screen/widgets/input_text.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  GlobalKey<FormState> _formKey = GlobalKey();

  String _email = '';
  String _password = '';

  Function? _submit() {
    final islogin = _formKey.currentState!.validate();
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: _email, password: _password)
        .then((value) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Home_Screen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
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
                if (data!.isEmpty || !data.contains('@')) {
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
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xff1e88e5)),
                  textStyle: MaterialStateProperty.all(TextStyle(
                    fontSize: 30.0,
                    fontFamily: GoogleFonts.acme().fontFamily,
                  )),
                  fixedSize: MaterialStateProperty.all(Size(100.0, 50.0)),
                ),
                onPressed: _submit,
                child: Text('Login'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '¿No tienes cuenta?',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: GoogleFonts.acme().fontFamily,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Sing_Up');
                  },
                  child: Text(
                    'Registrate',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 20.0,
                      fontFamily: GoogleFonts.acme().fontFamily,
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
