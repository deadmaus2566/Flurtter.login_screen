import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loggin_screen/widgets/icon_container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loggin_screen/widgets/login_form.dart';
import 'package:loggin_screen/widgets/logout_form.dart';

class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: <Color>[
              Color.fromARGB(255, 123, 143, 153),
              Color.fromARGB(255, 102, 178, 225),
            ], begin: Alignment.topCenter),
          ),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 30),
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconContainer(
                    url: 'assets/logo.png',
                  ),
                  Text(
                    'Registrate',
                    style: GoogleFonts.calligraffitti(
                      fontSize: 38.0,
                      color: Colors.white,
                    ),
                  ),
                  Divider(
                    height: 30.0,
                    color: Colors.black,
                  ),
                  //Formulario
                  LogoutForm(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      FloatingActionButton(
                        backgroundColor: Colors.blueAccent,
                        child: Icon(Icons.settings_backup_restore),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
