import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loggin_screen/pages/singin.dart';
import 'package:loggin_screen/pages/singup.dart';
import 'package:loggin_screen/widgets/icon_container.dart';

class RegistrarUsuario extends StatefulWidget {
  @override
  _RegistrarUsuarioState createState() => _RegistrarUsuarioState();
}

class _RegistrarUsuarioState extends State<RegistrarUsuario> {
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
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 200),
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconContainer(
                    url: 'assets/logo.png',
                  ),
                  Text(
                    'Bienvenido de Nuevo',
                    style: GoogleFonts.calligraffitti(
                      fontSize: 38.0,
                      color: Colors.white,
                    ),
                  ),
                  Text('Desarrollo de la Tarea',
                      style: GoogleFonts.cantataOne(
                        fontSize: 15.0,
                        color: Colors.white,
                      )),
                  Divider(height: 20.0),
                  SizedBox(
                    width: double.infinity,
                    height: 80.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 11, 52, 77),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      onPressed: () {
                        final route =
                            MaterialPageRoute(builder: (context) => SingUp());
                        Navigator.push(context, route);
                      },
                      child: Text('Registrarse',
                          style: GoogleFonts.nunito(
                              fontSize: 30.0, color: Colors.white)),
                    ),
                  ),
                  Divider(height: 40.0, color: Colors.transparent),
                  SizedBox(
                    width: double.infinity,
                    height: 80.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 11, 52, 77),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      onPressed: () {
                        final route =
                            MaterialPageRoute(builder: (context) => SingIn());
                        Navigator.push(context, route);
                      },
                      child: Text('Iniciar Sesión',
                          style: GoogleFonts.nunito(
                              fontSize: 30.0, color: Colors.white)),
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
