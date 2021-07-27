import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuPainterProvider {
  List<dynamic> painters = [];

  _MenuPainterProvider() {
    //cargarData();
  }

  Future<List<dynamic>> cargarDataProvider() async {
    final resp = await rootBundle.loadString('data/menu_headers.json');
    Map dataMap = json.decode(resp);

    // print(dataMap['rutas']);
    painters = dataMap['rutas'];

    return painters;
  }
}

final menuPainterProvider = new _MenuPainterProvider();
