import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loggin_screen/pages/home_screen.dart';
import 'package:loggin_screen/widgets/input_text.dart';

class LogoutForm extends StatefulWidget {
  const LogoutForm({super.key});

  @override
  State<LogoutForm> createState() => _LogoutFormState();
}

class _LogoutFormState extends State<LogoutForm> {
  GlobalKey<FormState> _formKey = GlobalKey();

  String _name = "";
  String _email = '';
  String _password = '';

  Function? _submit() {
    final islogout = _formKey.currentState!.validate();
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: _email, password: _password)
        .then((value) {
      print('Create Acount');
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Home_Screen()));
    }).onError((error, stackTrace) {
      print('Error ${error.toString()}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            InputText(
              label: 'Name',
              hint: 'Ingrese su nombre',
              icon: Icon(Icons.person),
              keyboard: TextInputType.name,
              onChangued: (data) {
                _name = data;
              },
              validator: (data) {
                if (data!.isEmpty) {
                  return 'Name Invalido';
                }
                return null;
              },
            ),
            Divider(
              height: 20.0,
            ),
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
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  textStyle: MaterialStateProperty.all(TextStyle(
                    fontSize: 30.0,
                    fontFamily: GoogleFonts.acme().fontFamily,
                  )),
                  fixedSize: MaterialStateProperty.all(Size(100.0, 50.0)),
                ),
                onPressed: _submit,
                child: Text('Sing Up'),
              ),
            ),
          ],
        ));
  }
}
