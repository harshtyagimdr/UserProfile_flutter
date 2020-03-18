import 'package:flutter/material.dart';
import 'package:user_profile/user_profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey.shade200,
          titleSpacing: 0,
          title: Text(
            "PIZZA HATHI",
            style:
                TextStyle(fontSize: 20, color: Colors.orange, letterSpacing: 5),
          ),
          leading: Center(
            child: Container(
              width: 40,
              height: 40,
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => UserProfile('+918979749001')));
                },
                child: Hero(
                  tag: "user",
                  child: Material(
                    elevation: 4.0,
                    borderRadius: BorderRadius.circular(60),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child:
                            Image.network('https://i.imgur.com/lnYikhUg.jpg')),

                  ),
                ),
              ),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.settings_power,
                color: Colors.black,
              ),
              color: Colors.white,
              onPressed: () {
                
              },
            ),
         
          ],
         
     
      )
    );
  }
}

class Support {
}

