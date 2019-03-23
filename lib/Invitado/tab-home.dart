import 'package:flutter/material.dart';
import 'package:mvpstarter/Utils/utils.dart';

class TabHome extends StatelessWidget {
  final tv_starter = Center(
    child: Text(
      'La experiencia Starter',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
  );

  final component_analisis = Card(
    child: Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              color: utils.parseColor('#04acd4'),
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Analísis',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'Determinación de funcionalidades y versiones del MVP',
            style: TextStyle(
              color: utils.parseColor('#04acd4'),
              fontWeight: FontWeight.bold,
              fontSize: 17.0,
            ),
          ),
          SizedBox(height: 15.0),
          Text(
            'Mediante las siguientes herramientas:',
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
          SizedBox(height: 10.0),
          Row(
            children: <Widget>[
              Icon(Icons.add_circle, color: utils.parseColor('#04acd4')),
              Text('    Product Management'),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(Icons.add_circle, color: utils.parseColor('#04acd4')),
              Text('    Inmersión Cognitiva'),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(Icons.add_circle, color: utils.parseColor('#04acd4')),
              Text('    Design Thinking'),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(Icons.add_circle, color: utils.parseColor('#04acd4')),
              Text('    Mapa de Usuarios'),
            ],
          ),
        ],
      ),
    ),
  );

  final component_gestion = Card(
    child: Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              color: utils.parseColor('#04acd4'),
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Gestión',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'Project Management aplicado a los proyectos',
            style: TextStyle(
              color: utils.parseColor('#04acd4'),
              fontWeight: FontWeight.bold,
              fontSize: 17.0,
            ),
          ),
          SizedBox(height: 15.0),
          Text(
            'Usando lo siguiente:',
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
          SizedBox(height: 10.0),
          Row(
            children: <Widget>[
              Icon(Icons.add_circle, color: utils.parseColor('#04acd4')),
              Text('    Herramientas ágiles'),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(Icons.add_circle, color: utils.parseColor('#04acd4')),
              Text('    Reportes por etapas'),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(Icons.add_circle, color: utils.parseColor('#04acd4')),
              Text('    Testing continuo'),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(Icons.add_circle, color: utils.parseColor('#04acd4')),
              Text('    Seguimiento y validación'),
            ],
          ),
        ],
      ),
    ),
  );

  final component_exclusividad = Card(
    child: Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              color: utils.parseColor('#04acd4'),
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Exclusividad',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'Makers exclusivamente dedicados a tu proyecto',
            style: TextStyle(
              color: utils.parseColor('#04acd4'),
              fontWeight: FontWeight.bold,
              fontSize: 17.0,
            ),
          ),
          SizedBox(height: 15.0),
          Text(
            'Diseñadores y Desarrolladores:',
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
          SizedBox(height: 10.0),
          Row(
            children: <Widget>[
              Icon(Icons.add_circle, color: utils.parseColor('#04acd4')),
              Text('    Backends'),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(Icons.add_circle, color: utils.parseColor('#04acd4')),
              Text('    Frontends'),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(Icons.add_circle, color: utils.parseColor('#04acd4')),
              Text('    Maquetadores'),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(Icons.add_circle, color: utils.parseColor('#04acd4')),
              Text('    Diseñadores'),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(Icons.add_circle, color: utils.parseColor('#04acd4')),
              Text('    Fullstacks'),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(Icons.add_circle, color: utils.parseColor('#04acd4')),
              Text('    Mobiles'),
            ],
          ),
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.only(left: 24.0, right: 24.0,bottom: 15.0, top: 15.0),
        children: <Widget>[
          tv_starter,
          SizedBox(height: 10.0),
          component_analisis,
          SizedBox(height: 10.0),
          component_gestion,
          SizedBox(height: 10.0),
          component_exclusividad,
        ],
      )),
    );
  }
}
