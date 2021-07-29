import 'dart:async';

import 'package:flutter/material.dart';


class ListaPage extends StatefulWidget {
  ListaPage({Key? key}) : super(key: key);

  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  
  ScrollController _scrollController = new ScrollController();
  List <int> _listaNumeros = [];
  int _ultimoItem = 0;
  // ignore: unused_field
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _agregar10();


    _scrollController.addListener(() {

        //_scrollController.position.pixels se le pueden restar 10 pixeles para asegurarse que cargue las 10 imagenes más antes de llegar al mero final 
        //Compruebo si la posición actual del scroll (pixels) es igual a la posiciín final del scroll dibujado(el final con MaxScrollExtent)
        if ( _scrollController.position.pixels == _scrollController.position.maxScrollExtent ){

          //_agregar10();

          //o Traer Información ;)  
          fetchData();

        }

    });

  }

  //Eliminar el ScrollController cuando la página se destruya, para no estar sumando un nuevo scroll controller cada vez que la página se crea
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text('Listas')

      ),

      body: Stack(

        children: [

          _crearLista(),
          _crearLoading(),


        ],


      ),
      
      
      
      

    );
  }

  _crearLista() {

    return ListView.builder(
      
      controller: _scrollController,
      itemCount: _listaNumeros.length,
      itemBuilder: ( BuildContext context, int index ){

        final imagen =_listaNumeros[index];

        return FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'), 
          image: NetworkImage('https://picsum.photos/500/300?image=$imagen'));


      },
      
      
      );

  } 
  

  void _agregar10(){

    for (var i = 1; i < 10; i++) {
      _ultimoItem++;
      _listaNumeros.add( _ultimoItem );
    }

    setState(() {
      
    });

  }

 Future fetchData() async{

        _isLoading = true;

       setState(() {});

       final duration = new Duration( seconds: 2); 

       Timer( duration, respuestaHTTP );


 }

  void respuestaHTTP(){

     _isLoading = false;

     _scrollController.animateTo(

        _scrollController.position.pixels +100,
        curve: Curves.fastOutSlowIn,
        duration: Duration( milliseconds: 250 ),

    );
    _agregar10();

  }

  _crearLoading() {

    if ( _isLoading ){

      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              CircularProgressIndicator(),

            ],
          ),

          SizedBox(

            height: 15.0,

          ),
          
        ],
      );

    }else{

      return Container();

    }



  }

}