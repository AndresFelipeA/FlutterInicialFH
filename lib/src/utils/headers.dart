import 'dart:math';

import 'package:flutter/material.dart';

Color colorAlt() {
  int r = Random().nextInt(255),
      g = Random().nextInt(255),
      b = Random().nextInt(255);
  Color col1 = Color.fromRGBO(r, g, b, 1);

  return col1;
}

//CUADRADOS
class HeaderCuadrado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //para colores hexadecimales Color(0xffcolor)

        height: 300,
        color: colorAlt(),
      ),
    );
  }
}

///////BORDES REDONDOS
class HeaderBordesRedondeados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //para colores hexadecimales Color(0xffcolor)
        height: 300,
        decoration: BoxDecoration(
            color: colorAlt(),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(70),
                bottomRight: Radius.circular(70))),
      ),
    );
  }
}

//////DIAGONAL
///Diagonales y custom painter
class HeaderErrorDiag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Transform.rotate(
        angle: -0.09,
        child: Container(
          //para colores hexadecimales Color(0xffcolor)
          height: 300,
          color: colorAlt(),
        ),
      ),
    );
  }
}

///Custom Painter y Coordenadas DIAGONAL
//(0,0)Superior Izquierda
//(0,size.height)Inferior Izquierda
//(size.widht,0)Superior Derecha
//(size.width,size.height)Inferior Derecha
//mitad de objeto(size.widht, size.height *0.5)
class HeaderDiagonal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //para colores hexadecimales Color(0xffcolor)
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xff24C265),
      child: CustomPaint(
        painter: _HeaderDiagonalPainter(),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();

    //propiedades
    lapiz.color = colorAlt();
    //lapiz.style = PaintingStyle.stroke; //solo linea
    lapiz.style = PaintingStyle.fill; //stroke
    lapiz.strokeWidth = 2;

    final path = new Path();
    //dibujar path
    //path.moveTo(x, y)mover sin dibujar
    //path.lineTo(x, y)mover dibujando
    path.moveTo(0, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.3);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

///TRIANGULAR
class HeaderTriangular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //para colores hexadecimales Color(0xffcolor)
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xff24C265),
      child: CustomPaint(
        painter: _HeaderTriangularPainter(),
      ),
    );
  }
}

class _HeaderTriangularPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    /////(0,0)Superior Izquierda
    //(0,size.height)Inferior Izquierda
    //(size.widht,0)Superior Derecha
    //(size.width,size.height)Inferior Derecha
    //mitad de objeto(size.widht, size.height *0.5)
    //propiedades
    lapiz.color = colorAlt();
    //lapiz.style = PaintingStyle.stroke; //solo linea
    lapiz.style = PaintingStyle.fill; //stroke
    lapiz.strokeWidth = 2;

    final path = new Path();
    //dibujar path
    //path.moveTo(x, y)mover sin dibujar
    //path.lineTo(x, y)mover dibujando
    //path.moveTo(0, 0); //mno hay necesidad de Arrancar desde 0,0
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    //path.lineTo(0, 0);

    /* linea Inferior
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    // me dio, pero no es necesario cerrar la linea trazando de Sup Iz a Inf Der el cierra la figura
    */
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//FORMA DE PICO
class HeaderPico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //para colores hexadecimales Color(0xffcolor)
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xff24C265),
      child: CustomPaint(
        painter: _HeaderPicoPainter(),
      ),
    );
  }
}

class _HeaderPicoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    /////(0,0)Superior Izquierda
    //(0,size.height)Inferior Izquierda
    //(size.widht,0)Superior Derecha
    //(size.width,size.height)Inferior Derecha
    //mitad de objeto(size.widht, size.height *0.5)
    //propiedades
    lapiz.color = colorAlt();
    lapiz.style = PaintingStyle.fill; //stroke
    lapiz.strokeWidth = 2;

    final path = new Path();

    path.lineTo(0, size.height * 0.20);
    path.lineTo(size.width * 0.5, size.height * 0.25); //juegpo con los %
    path.lineTo(size.width, size.height * 0.20);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//FORMA CURVA
class HeaderCurvo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //para colores hexadecimales Color(0xffcolor)
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xff24C265),
      child: CustomPaint(
        painter: _HeaderCurvoPainter(),
      ),
    );
  }
}

class _HeaderCurvoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    /////(0,0)Superior Izquierda
    //(0,size.height)Inferior Izquierda
    //(size.widht,0)Superior Derecha
    //(size.width,size.height)Inferior Derecha
    //mitad de objeto(size.widht, size.height *0.5)
    //propiedades
    lapiz.color = colorAlt();
    lapiz.style = PaintingStyle.fill; //stroke
    lapiz.strokeWidth = 20;

    final path = new Path();

    path.lineTo(0, size.height * 0.25);
    //path.lineTo(size.width, size.height * 0.25);
    //x1,y1 ángulo de curvatura o por donde tiene que pasar la curva (punto central)
    //x2,y2 donde llega la línea
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.4, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//FORMA WAVES
class HeaderWaves extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //para colores hexadecimales Color(0xffcolor)
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xff24C265),
      child: CustomPaint(
        painter: _HeaderWavesPainter(),
      ),
    );
  }
}

class _HeaderWavesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    /////(0,0)Superior Izquierda
    //(0,size.height)Inferior Izquierda
    //(size.widht,0)Superior Derecha
    //(size.width,size.height)Inferior Derecha
    //mitad de objeto(size.widht, size.height *0.5)
    //propiedades
    lapiz.color = colorAlt();
    lapiz.style = PaintingStyle.fill; //stroke
    lapiz.strokeWidth = 20;

    final path = new Path();

    path.lineTo(0, size.height * 0.25);
    //path.lineTo(size.width, size.height * 0.25);
    //x1,y1 ángulo de curvatura o por donde tiene que pasar la curva (punto central)
    //x2,y2 donde llega la línea
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.3,
        size.width * 0.5, size.height * 0.25);

    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.2, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderWavesGradiante extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.transparent,
      child: CustomPaint(
        painter: _HeaderWavesGradiantePainter(),
      ),
    );
  }
}

class _HeaderWavesGradiantePainter extends CustomPainter {
  const _HeaderWavesGradiantePainter();
  @override
  void paint(Canvas canvas, Size size) {
    final rect = new Rect.fromCircle(
        center: Offset(
            Random().nextInt(100).toDouble(), Random().nextInt(100).toDouble()),
        radius: 30);

    final Gradient gradiente = new LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      //Esto es lo del Null safety, en fin :C
      colors: [colorAlt(), colorAlt()],
    );
    final lapiz = Paint()..shader = gradiente.createShader(rect);

    lapiz.color = Colors.red;
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 20;

    final path = new Path();

    path.lineTo(0, size.height * 0.25);
    //path.lineTo(size.width, size.height * 0.25);
    //x1,y1 ángulo de curvatura o por donde tiene que pasar la curva (punto central)
    //x2,y2 donde llega la línea
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.3,
        size.width * 0.5, size.height * 0.25);

    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.2, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
