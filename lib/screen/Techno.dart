import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:registration_app/screen/InfoCard.dart';

class Techno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Techno Aagaz', style: TextStyle()),
          backgroundColor: Colors.indigo[800],
        ),
        backgroundColor: Colors.blueGrey[800],
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
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child:Material(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(30.0),
                elevation: 5.0,
                    child: MaterialButton(
                      elevation: 15,
                      padding: EdgeInsets.all(19),
                      child: Text('Day1 (18th feb)',style: TextStyle(
                        fontSize: 25,
                        color: Colors.black87

                      ),),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Day1()));
                      },
                      height: 50.0,
                      minWidth: 250.0,

                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child:Material(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(30.0),
               elevation: 5.0,
                    child: MaterialButton(
                      elevation: 15,
                      padding: EdgeInsets.all(19),
                      child: Text('Day2 (19th feb)',style: TextStyle(
                        fontSize: 25,
                        color: Colors.black87
                      ),),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Day2()));
                      },
                      height: 50.0,
                      minWidth: 250.0,

                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child:Material(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(30.0),
                elevation: 5.0,
                    child: MaterialButton(
                      elevation: 15,
                      padding: EdgeInsets.all(19),
                      child: Text('Day3 (20th feb)',style: TextStyle(
                        fontSize: 25,
                        color: Colors.black87

                      ),),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Day3()));
                      },
                      height: 50.0,
                      minWidth: 250.0,

                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class Day1 extends StatefulWidget {

  @override
  _Day1 createState() => _Day1();
}

class _Day1 extends State<Day1> {

  final DatabaseReference database = FirebaseDatabase.instance.reference().child('Techno_day1');

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('Day 1', style: TextStyle()),
          backgroundColor: Colors.indigo[800],
        ),
        backgroundColor: Colors.blueGrey[800],
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Row(children: <Widget>[
                      buildPadding('technoimg/panting.png'),
                      buildPadding('technoimg/Fashion_illustration.png')
                    ]),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Row(children: <Widget>[
                      buildPadding('technoimg/Extempore.png'),
                      buildPadding('technoimg/Newspaper.png')
                    ]),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Row(children: <Widget>[
                      buildPadding('technoimg/Collage_Photoshop.png'),
                      buildPadding('technoimg/mehandi.png')
                    ]),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Row(children: <Widget>[
                      buildPadding('technoimg/Photography.png'),
                      buildPadding('technoimg/Rangoli.png')
                    ]),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Row(children: <Widget>[
                      buildPadding('technoimg/War_of_guns.png'),
                      buildPadding('technoimg/ad_mad.png')
                    ]),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Row(children: <Widget>[
                      buildPadding('technoimg/pharmacist.png'),
                      buildPadding('technoimg/skit.png')
                    ]),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Row(children: <Widget>[
                      buildPadding('technoimg/Solo_Performances.png'),
                    ]),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}
class Day2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Day 2', style: TextStyle()),
          backgroundColor: Colors.indigo[800],
        ),
        backgroundColor: Colors.blueGrey[800],
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Row(children: <Widget>[
                      buildPadding('technoimg/Live_project.png'),
                      buildPadding('technoimg/Fitness_Challenge.png')
                    ]),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Row(children: <Widget>[
                      buildPadding('technoimg/selfie_wall_Frame.png'),
                      buildPadding('technoimg/Recycle.png')
                    ]),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Row(children: <Widget>[
                      buildPadding('technoimg/quiz.png'),
                      buildPadding('technoimg/Stand_up_comedy.png')
                    ]),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Row(children: <Widget>[
                      buildPadding('technoimg/Clash_of_bands.png'),
                      buildPadding('technoimg/Dance.png')
                    ]),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Day3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Day 3', style: TextStyle()),
          backgroundColor: Colors.indigo[800],
        ),
        backgroundColor: Colors.blueGrey[800],
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Row(children: <Widget>[
                      buildPadding('technoimg/Yoga_competition.png'),
                      buildPadding('technoimg/Pubg.jpg')
                    ]),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Row(children: <Widget>[
                      buildPadding('technoimg/Tressure_hunt.png'),
                      buildPadding('technoimg/No_fire_food_competition.png')
                    ]),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Row(children: <Widget>[
                      buildPadding('technoimg/movie_making.png'),
                      buildPadding('technoimg/Antakshri.png')
                    ]),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Row(children: <Widget>[
                      buildPadding('technoimg/fashion_presentation.png'),
                    ]),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Padding buildPadding(String img) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Material(
      borderRadius: BorderRadius.circular(10.0),
      elevation: 4.0,
      child: FlatButton(
        onPressed: () {},
        child: Card(
            child: Image.asset(
              '$img',
              height: 115,
              width: 145,
            ),
            elevation: 100),
      ),
    ),
  );
}