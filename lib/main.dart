import 'package:flutter/material.dart';
import 'screen/login.dart';
import 'screen/register.dart';
import 'package:registration_app/screen/EventPageReg.dart';
import 'package:registration_app/screen/EventPageIcons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: 'welcome',
      routes: {
        'welcome': (context) => Welcome(),
//        'login' :(context) => login(),
//        'register' : (context) => Register(),
      },
    );
  }
}

class Welcome extends StatefulWidget {


  @override
  _WelcomeState createState() => _WelcomeState();
}
class _WelcomeState extends State<Welcome> {
//  Future navigateToCard(context) async {
//    Navigator.push(context, MaterialPageRoute(builder: (context) => Cards()));
//  }//navigate to card events page

  Future navigateToRegister(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
  }//navigate to register page

  Future navigateToLogin(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  }
  Future navigateToEventPageIcons(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => EventPageIcons()));
  }

  final Shader linearGradient = LinearGradient(
    colors: <Color>[Colors.redAccent, Colors.lightBlue,Colors.deepOrangeAccent],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      body: Center(

        child: Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin:Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [Color(0xff28313B) , Color(0xff485461)]
    )
    ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//                Container(
//                  child: Image.asset('images/logo1'),
//                  height:60.0,
//                ),
                Center(
                  child: Text(
                      'AUevents',
                      style: new TextStyle(
                       fontSize: 60.0,
                        fontWeight: FontWeight.bold,
                         foreground: Paint()..shader = linearGradient),
                   ),
                )
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child:Material(
                  color: Colors.teal,
                borderRadius: BorderRadius.circular(30.0),
//                elevation: 5.0,
                child: MaterialButton(
                    elevation: 15,
                    padding: EdgeInsets.all(19),
                  child: Text('Login',style: TextStyle(
                    fontSize: 25,
                    color: Colors.black87
                  ),),
                  onPressed: (){
                    navigateToLogin(context);
                  },
                  height: 50.0,
                  minWidth: 250.0,

                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child:Material(
                borderRadius: BorderRadius.circular(30.0),
               elevation: 5.0,
                color: Colors.teal,
                child: MaterialButton(
                  padding: EdgeInsets.all(19),
                  child: Text('Registration',style: TextStyle(
                    fontSize: 25,
                    color: Colors.black87

                  ),),
                  onPressed: (){
                    navigateToRegister(context);
                  },
                  height: 50.0,
                  minWidth: 250.0,

                ),
              ),
            ),
          ],

        ),
      ),
      ),

    floatingActionButton: Transform.scale(
    scale: 1.4,
    child: FloatingActionButton(

    onPressed: (){
      navigateToEventPageIcons(context);
    },
      child: Icon(Icons.event_note,size: 40,),
    tooltip: 'Events',
    backgroundColor: Colors.teal,
    ),
      // This trailing comma makes auto-formatting nicer for build methods.
    )
    );
  }
}
