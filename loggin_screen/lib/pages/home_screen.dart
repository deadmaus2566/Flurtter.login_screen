import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loggin_screen/pages/singin.dart';
import 'package:loggin_screen/widgets/icon_container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loggin_screen/widgets/login_form.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
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
                    'Home',
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
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xff1e88e5)),
                        textStyle: MaterialStateProperty.all(TextStyle(
                          fontSize: 30.0,
                          fontFamily: GoogleFonts.acme().fontFamily,
                        )),
                        fixedSize: MaterialStateProperty.all(Size(100.0, 50.0)),
                      ),
                      onPressed: () {
                        FirebaseAuth.instance.signOut().then((value) {
                          print('Signed Out');
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SingIn()));
                        });
                      },
                      child: Text('Logout'),
                    ),
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
