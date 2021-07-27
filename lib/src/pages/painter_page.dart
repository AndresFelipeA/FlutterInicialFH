import 'dart:math';

import 'package:ferhcourse/src/providers/menu_painter_provider.dart';
import 'package:flutter/material.dart';

class PainterPage extends StatelessWidget {
  const PainterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Painter Page'),
      ),
      body: _listaCompleta(),
    );
  }

  Widget _listaCompleta() {
    //print(menuProvider.opciones);
    //menuProvider.cargarData()

    return FutureBuilder(
      future: menuPainterProvider.cargarDataProvider(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        // print('builder');
        // print(snapshot.data);
        return ListView(
          children: _listaPainters(snapshot.data, context),
        );
      },
    );

    // return ListView(
    //   children: _listaItems(),
    // );
  }

  //pilas si arroja un error de List dynamic es por el null safety y hay que hacerlo apcional el parámetro
  List<Widget> _listaPainters(List<dynamic>? data, BuildContext context) {
    final List<Widget> opciones = [];

    //otro error de null safety, la data hay que tomarla como si no pudiera llefar con el ?
    data?.forEach((opt) {
      int r = Random().nextInt(255);
      int g = Random().nextInt(255);
      int b = Random().nextInt(255);
      Color col = Color.fromRGBO(r, g, b, 1);

      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: Icon(Icons.filter_frames_sharp, color: col),
        trailing: Icon(Icons.keyboard_arrow_right, color: col),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);

          // final route = MaterialPageRoute(
          //   builder: (context) =>  AlertPage()
          //   );

          // Navigator.push(context, route);
        },
      );

      opciones
        ..add(widgetTemp)
        ..add(Divider(
          color: Colors.black,
          height: 5,
        ));
    });

    return opciones;
  }
}
