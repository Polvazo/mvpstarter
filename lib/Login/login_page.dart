import 'package:flutter/material.dart';
import 'package:mvpstarter/Home/register_claim.dart';
import 'package:mvpstarter/Utils/utils.dart';
import 'package:mvpstarter/Invitado/home-page.dart';


class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/logo_mvpstarter.png'),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Ingrese email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Ingrese password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: () {

        },
        padding: EdgeInsets.all(12),
        color:utils.parseColor('#04acd4'),
        child: Text('Ingresar', style: TextStyle(color: Colors.white)),
      ),
    );

    final textDerechos = Center(
        child: Align(
          alignment: Alignment.bottomCenter,
           child:  Text(
               'Copyright © Todos los Derechos Reservados'
           ),
        ),


    );
    final registrarseIcons = Center(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: RaisedButton(onPressed: (){  Navigator.of(context).pushNamed(HomePageInvitado.tag); },
        color: Colors.teal,
        child:  Text(
            'Iniciar sesión como invitado',
            style: TextStyle( fontWeight: FontWeight.bold),)
        ),
      ),


    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          physics:NeverScrollableScrollPhysics(),
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            registrarseIcons,
            textDerechos,

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(registerClaim.tag);
        },
        tooltip: 'Enviar sugerencia o queja',
        child: Icon(
            Icons.notifications_active,
            color: Colors.white),
            backgroundColor: Colors.red,
      ),
    );
  }
}