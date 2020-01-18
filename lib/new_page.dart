
import 'package:flutter/material.dart';
class NewPage extends StatelessWidget {
  final String title;

  NewPage (this.title);

  @override
  Widget build(BuildContext context) {
  return Scaffold(appBar: new AppBar(
    title:new Text(title),

  ),
  body: new Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
    
        Align(
          alignment: Alignment.center,
                  child: SizedBox(
            width: 200,
            height: 200,
                    child: Hero(
                      tag: "pic",
                                          child: new CircleAvatar(
                        
             backgroundImage: AssetImage('dev_images/profile.png'),
            ),
                    ),
          ),
        )
        
      ],
    ),
  )
  
  ,);
  }

}