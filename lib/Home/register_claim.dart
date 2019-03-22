import 'package:flutter/material.dart';
import 'package:mvpstarter/Utils/utils.dart';

class registerClaim extends StatefulWidget {
  static String tag = 'register-claim';
  @override
  _registerClaimPage createState() => new _registerClaimPage();
}

class _registerClaimPage extends State<registerClaim> {
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

    final tv_title = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintStyle: TextStyle(
          color: Colors.white,
        ),
        hintText: 'Título de queja o sugerencia',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );

    final tv_description = Theme(
      data: new ThemeData(
        primaryColor: Colors.white,
        primaryColorDark: Colors.white,
      ),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        decoration: InputDecoration(

          hintStyle: TextStyle(
            color: Colors.white,
          ),
          hintText: 'Ingrese descripción de queja o sugerencia',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );

    final textSugeriencia = Center(
        child: Text(
          'SUGERENCIAS O QUEJAS',
          style: TextStyle(
            color: Colors.white,
          ),
        )
    );

    final sendClaim = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: () {

        },
        padding: EdgeInsets.all(12),
        color: Colors.white,
        child: Text('Enviar', style: TextStyle(color: utils.parseColor('#04acd4'))),
      ),
    );

    return Scaffold(

      backgroundColor: utils.parseColor('#04acd4'),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          physics:NeverScrollableScrollPhysics(),
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            textSugeriencia,
            logo,
            SizedBox(height: 48.0),
            tv_title,
            SizedBox(height: 20.0),
            tv_description,
            SizedBox(height: 24.0),
            sendClaim,
          ],
        ),
      ),
    );
  }
}