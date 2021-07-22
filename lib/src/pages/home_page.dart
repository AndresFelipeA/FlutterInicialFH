import 'package:ferhcourse/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Componentes'),
        ),
        body: _lista(),
      ),
    );
  }

  Widget _lista() {
    //print(menuProvider.opciones);
    //menuProvider.cargarData()

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        // print('builder');
        // print(snapshot.data);
        return ListView(
          children: _listaItems(snapshot.data),
        );
      },
    );

    // return ListView(
    //   children: _listaItems(),
    // );
  }

  //pilas si arroja un error de List dynamic es por el null safety y hay que hacerlo apcional el parámetro
  List<Widget> _listaItems(List<dynamic>? data) {
    final List<Widget> opciones = [];

    //otro error de null safety, la data hay que tomarla como si no pudiera llefar con el ?
    data?.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: Icon(
          Icons.ac_unit_outlined,
          color: Colors.blue,
        ),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {},
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
