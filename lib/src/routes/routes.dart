import 'package:flutter/material.dart';
import 'package:ferhcourse/src/pages/alert_page.dart';
import 'package:ferhcourse/src/pages/avatar_pages.dart';
import 'package:ferhcourse/src/pages/home_page.dart';


Map<String, WidgetBuilder> getApplicationRoutes(){


  return <String, WidgetBuilder>{

        '/' : (BuildContext context) => HomePage(),
        'alert' : (BuildContext context) => AlertPage(),
        'avatar' : (BuildContext context) => AvatarPage(),

      };

}

