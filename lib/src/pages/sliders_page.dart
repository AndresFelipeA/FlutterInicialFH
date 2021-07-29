import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text('Slider Page'),

      ),

      body: Container(

        padding: EdgeInsets.only(top: 50.0),

        child:Column(

          children: [

            _crearSliders(),
            _crearCheckbox(),
            _crearSwitch(),
            Expanded(child: _crearImagen()),

          ],

        ),

      ),


    );
    
  }

  Widget _crearSliders() {


    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la Imágen',
      //divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,

      //evaluo si el bloquear check está deshabilitado
      onChanged: (_bloquearCheck) ? null : (valor){

        setState(() {
        _valorSlider = valor;
          
        });

      },
      
      );


  }

  Widget _crearCheckbox() {

    /*
    return Checkbox(
      onChanged: ( valor ){
        setState(() {
          _bloquearCheck = valor!;
        });
      },
      value: _bloquearCheck,
    );
    */

    return CheckboxListTile(
      
      onChanged: ( valor ){
        setState(() {
          _bloquearCheck = valor!;
        });
      },
      value: _bloquearCheck,
      title: Text('Bloquear Slider'),
      );

  }

  _crearSwitch() {

    return SwitchListTile(

      onChanged: ( valor ){
        setState(() {
          _bloquearCheck = valor;
        });
      },
      value: _bloquearCheck,
      title: Text('Bloquear Slider con Switch'),
      );




  }

  Widget _crearImagen() {

    return Image(

      image: NetworkImage('https://cdn.icon-icons.com/icons2/1412/PNG/512/comics-ironman-flying_97490.png'),
      width: _valorSlider,
      fit: BoxFit.contain,

    );

  }


}