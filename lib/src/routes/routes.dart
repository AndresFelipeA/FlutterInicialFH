import 'package:ferhcourse/src/pages/animated_container.dart';
import 'package:ferhcourse/src/pages/input_page.dart';
import 'package:ferhcourse/src/pages/listview_page.dart';
import 'package:ferhcourse/src/pages/painter_page.dart';
import 'package:ferhcourse/src/pages/sliders_page.dart';
import 'package:ferhcourse/src/utils/headers.dart';
import 'package:flutter/material.dart';
import 'package:ferhcourse/src/pages/home_page.dart';
import 'package:ferhcourse/src/pages/alert_page.dart';
import 'package:ferhcourse/src/pages/avatar_pages.dart';
import 'package:ferhcourse/src/pages/card_pages.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'painter': (BuildContext context) => PainterPage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'inputs': (BuildContext context) => InputPage(),
    'slider': (BuildContext context) => SliderPage(),
    'list': (BuildContext context) => ListaPage(),

    /////
    'cuadrado': (BuildContext context) => HeaderCuadrado(),
    'bordes_redondeados': (BuildContext context) => HeaderBordesRedondeados(),
    'error_diag': (BuildContext context) => HeaderErrorDiag(),
    'diagonal': (BuildContext context) => HeaderDiagonal(),
    'triangular': (BuildContext context) => HeaderTriangular(),
    'pico': (BuildContext context) => HeaderPico(),
    'curvo': (BuildContext context) => HeaderCurvo(),
    'waves': (BuildContext context) => HeaderWaves(),
    'waves_grad': (BuildContext context) => HeaderWavesGradiante(),
  };
}
