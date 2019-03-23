import 'package:flutter/material.dart';
import 'Login/login_page.dart';
import 'package:mvpstarter/Home/register_claim.dart';
import 'package:mvpstarter/Invitado/home-page.dart';
import 'package:mvpstarter/Utils/utils.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    registerClaim.tag: (context) => registerClaim(),
    HomePageInvitado.tag: (context) => HomePageInvitado(),

  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: utils.parseColor('#04acd4'),

      ),
      home: LoginPage(),
      routes: routes,
    );
  }
  }
