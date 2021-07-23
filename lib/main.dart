//import 'package:ferhcourse/src/pages/home_temp.dart';
import 'package:flutter/material.dart';
import 'package:ferhcourse/src/pages/alert_page.dart';
import 'package:ferhcourse/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      initialRoute: '/',
      routes:  getApplicationRoutes(),

      onGenerateRoute: (RouteSettings settings){

        print('ruta llamda ${settings.name}');

        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage()
          );


      },


    );
  }
}
