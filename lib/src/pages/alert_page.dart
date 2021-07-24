import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Mostrar Alerta'),
          onPressed: () {
            _mostrarAlert(context);
          },
          style: ElevatedButton.styleFrom(
              primary: Colors.blue, shape: StadiumBorder()),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.reset_tv),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            title: Text('Titulo'),
            content: Column(
              //con este aseguro el largo mínimo
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Este es el Contenido de la caja de la alerta'),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: [
              ElevatedButton(
                child: Text('Cancelar'),
                onPressed: () => Navigator.of(context).pop(),
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue, shape: StadiumBorder()),
              ),
              ElevatedButton(
                child: Text('Ok'),
                onPressed: () => Navigator.of(context).pop(),
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue, shape: StadiumBorder()),
              ),
            ],
          );
        });
  }
}
