import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
 
  static final pageName = 'avatar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          Container(
            padding: EdgeInsets.all(2.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://resizer.glanacion.com/resizer/sYx80tnedAz74rFIai5mS8tahs0=/1920x0/filters:quality(80)/cloudfront-us-east-1.images.arcpublishing.com/lanacionar/UHYZMU4ENFBOXFZI2GG63ONNUI.jpg'),
              radius: 30.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 5.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: ClipOval(
          child: FadeInImage(
            image: NetworkImage(
                'https://www.eluniversal.com.mx/sites/default/files/2017/08/27/alan_turing.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
          ),
        ),
      ),
    );
  }
}
