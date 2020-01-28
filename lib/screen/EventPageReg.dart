import 'package:flutter/material.dart';
import 'package:registration_app/screen/To_Day_Sphoorti.dart';
import 'file:///C:/Users/user/Desktop/registration_app/lib/screen/Techno.dart';
import 'package:registration_app/screen/To_Day_Techno.dart';
class EventPageReg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin:Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Color(0xff28313B) , Color(0xff485461
                    )]
                )
            ),
            child: Center(
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
                        'Select Event',
                        style: TextStyle(
                            letterSpacing: 3.0,
                            color: Colors.white,
                            fontSize: 40.0,
                            fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
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
                    elevation: 15.0,
                    child: MaterialButton(
                        padding: EdgeInsets.all(19),
                      child: Text('Techno Aagaz',style: TextStyle(
                        fontSize: 25,
                        color: Colors.black87
                      ),),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => To_Day_Techno()));
                      },
                      height: 50.0,
                      minWidth: 250.0,

                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child:Material(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(30.0),
                    elevation: 15.0,
                    child: MaterialButton(
                      padding: EdgeInsets.all(19),
                      child: Text('Sphoorti',style: TextStyle(
                        fontSize: 25,
                          color: Colors.black87
                      ),),
                      onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => To_Day_Sphoorti()));
                        },
                      height: 50.0,
                      minWidth: 250.0,

                    ),
                  ),
                ),
              ],

            ),
        ),
          ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
