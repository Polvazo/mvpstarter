import 'package:flutter/material.dart';
import 'package:mvpstarter/Utils/contants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mvpstarter/Utils/utils.dart';


class TabClients extends StatefulWidget {


  _TabClients createState() => new _TabClients();
}

class _TabClients extends State<TabClients> {
  static String nameMvp = null;

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          tv_starter,
          _buildCard(),
        ],
      ),
    );
  }

  final tv_starter = Center(
    child: Text(
      'Ellos ya son parte de la Experiencia Starter', textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
  );

  Widget _buildCard() {
    return CarouselSlider(
      height: 200,
      autoPlay: true,
      enlargeCenterPage: true,
      items: Constants.url.map((nameMvp) {
        return Builder(
          builder: (BuildContext context) {
            return Card(
                elevation: 2,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: utils.parseColor('#04acd4'), width: 1.0)),
                margin: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    nameMvp , fit: BoxFit.contain,),
                ));
          },
        );
      }).toList(),
    );
  }
}
