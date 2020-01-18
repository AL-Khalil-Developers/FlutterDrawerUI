import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_ui/new_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   
   return MaterialApp(
     theme: ThemeData(primarySwatch: Colors.red),
     debugShowCheckedModeBanner: false,
     title: "Khalil App",
     
     routes: <String,WidgetBuilder>{"/a": (BuildContext context) 
     => new NewPage("New Page (1)"),
     "/b":(BuildContext context) => NewPage("New Page (2)"),},
     home: new HomePage(),
   ); 
  } 
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
         title: new Text("AL-Khalil developers"),
         elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
       ),
       drawer: new Drawer(
         child: new ListView(
           children: <Widget>[
             new UserAccountsDrawerHeader(
               accountName: new Text("Khalil Ahmed"),
                accountEmail: new Text("ALKhalildevleopers@gmail.com"),
                currentAccountPicture: Hero(

                  tag: "pic",
                                  child: new CircleAvatar(
                    backgroundImage: AssetImage('dev_images/profile.png'),
                    backgroundColor: Colors.yellow,
                  
                  ),
                ),
                otherAccountsPictures: <Widget>[
                  new CircleAvatar(
                    backgroundImage: NetworkImage("https://firebasestorage.googleapis.com/v0/b/bit-pay-cf468.appspot.com/o/coding-1853305_640.jpg?alt=media&token=dcbc9ce2-9372-4445-897f-30c4176124b0"),
                    backgroundColor: Colors.white,
                  )
                ],
             ),
             new _menuItems(Icons.home,"Home", ()=>{Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>new NewPage("HomePage")))}),
             new _menuItems(Icons.lock,"Locked accounts",()=>{Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>new NewPage("Locked Accounts")))}),
             new _menuItems(Icons.computer,"Computer Science",()=>{Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>new NewPage("Computer Science")))}),
             new _menuItems(Icons.device_hub,"Developers",()=>{Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>new NewPage("Developers")))}),
             new _menuItems(Icons.money_off,"Monetization",()=>{Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>new NewPage("Monetization")))}),
             
              new ListTile(
                title: new Text("AL-Khlail Developers"),
                subtitle: new Text("Youtube channel",),
                onTap: () {
                  
                  Navigator.of(context).push(new MaterialPageRoute(builder:
                   (BuildContext context) 
                  => new NewPage("youtube channel page")));
                }
                
            
             )
           ],
         ),
       ),
       body: new Container(
         child: new Center(
           child: new Text("Home Page"),
         ),
       ),
      
    );
  }
}

class _menuItems extends StatelessWidget {
    IconData menuIcon;
    String menuTitleText;
    Function onTapFunction;

  _menuItems(this.menuIcon,this.menuTitleText,this.onTapFunction);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey))
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0,bottom: 8.0,right: 8.0),
        child: InkWell(
          splashColor: Colors.redAccent,
          onTap: onTapFunction,
                  child: Container(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                new Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: new Icon(menuIcon),
                    ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: new Text(menuTitleText),
                 ),
                  ],
                ),
                 
                 new Icon(Icons.arrow_right)
               ],
             ), 
          ),
        ),
      ),
    );
  }
}
