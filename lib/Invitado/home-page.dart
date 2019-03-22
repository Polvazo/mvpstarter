import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:mvpstarter/Invitado/tab-clients.dart';
import 'package:mvpstarter/Invitado/tab-contact.dart';
import 'package:mvpstarter/Invitado/tab-home.dart';
import 'package:mvpstarter/Utils/utils.dart';


class HomePageInvitado extends StatefulWidget {
  static String tag = 'home-page';


  @override
  _HomePageInvitado createState() => _HomePageInvitado();
}

class _HomePageInvitado extends State<HomePageInvitado> {
  int _page = 0;
  int _pageIndex = 0;
  Color primaryNavigation = utils.parseColor('#04acd4');

  final TabClients _clients = TabClients();
  final TabHome _home = TabHome();
  final TabContact _contact = TabContact();

  Widget _showPage = new TabHome();

  Widget _pageChooser (int page){
      switch(page){
        case 0:
          return _home;
          break;
        case 1:
          return _clients;
          break;
        case 2:
          return _contact;
          break;


      }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          initialIndex: _pageIndex,
          items: <Widget>[
            Icon(Icons.home, size: 30, color: Colors.white),
            Icon(Icons.group, size: 30,color: Colors.white),
            Icon(Icons.business_center, size: 30, color: Colors.white),
          ],
          color: primaryNavigation,
          buttonBackgroundColor: primaryNavigation,
          backgroundColor: Colors.white,
          animationCurve: Curves.ease,
          animationDuration: Duration(milliseconds: 350),
          onTap: (int tappedIndex) {
            setState(() {
              _showPage = _pageChooser(tappedIndex);
            });
          },
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: _showPage,
          ),
        ));
  }
}