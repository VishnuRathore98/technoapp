import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:registration_app/main.dart';
import 'package:registration_app/screen/InfoCard.dart';

class To_Day_Techno extends StatelessWidget {
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
        title: Text('Day 1 Events:', style: TextStyle()),
        backgroundColor: Colors.indigo[800],
      ),
      backgroundColor: Colors.blueGrey[800],
      body: RadioGroup1(),
    );
  }
}

class RadioGroup1 extends StatefulWidget {
  @override
  RadioGroupWidget1 createState() => RadioGroupWidget1();
}

class Event_List1 {
  String name;
  int index;
  Event_List1({this.name, this.index});
}

class RadioGroupWidget1 extends State {

// Default Radio Button Item
  String radioItem = 'Select Events:';

// Group Value for Radio Button.
  int id = 1;

  List<Event_List1> fList = [
    Event_List1(
      index: 1,
      name: "Painting",
    ),
    Event_List1(
      index: 2,
      name: "Fashion Illustration",
    ),
    Event_List1(
      index: 3,
      name: "Extempore",
    ),
    Event_List1(
      index: 4,
      name: "Newspaper Design",
    ),
    Event_List1(
      index: 5,
      name: "Collage on photoshop",
    ),
    Event_List1(
      index: 6,
      name: "Mehandi Competition",
    ),
    Event_List1(
      index: 7,
      name: "Photography",
    ),
    Event_List1(
      index: 8,
      name: "Rangoli",
    ),
    Event_List1(
      index: 9,
      name: "Lan Gaming",
    ),
    Event_List1(
      index: 10,
      name: "AD-Mad Show",
    ),
    Event_List1(
      index: 11,
      name: "Kaun Banega Pharmacist",
    ),
    Event_List1(
      index: 12,
      name: "SKIT",
    ),
    Event_List1(
      index: 13,
      name: "Solo Performances",
    ),

  ];

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
            padding : EdgeInsets.all(14.0),
            child: Text('$radioItem', style: TextStyle(fontSize: 23))
        ),

        Expanded(
            child: Container(
              height: 350.0,
              child: SingleChildScrollView(
                child:   Column(
                  children:
                  fList.map((data) => RadioListTile(
                    title: Text("${data.name}"),
                    groupValue: id,
                    value: data.index,
                    onChanged: (val) {
                      setState(() {
                        radioItem = data.name ;
                        id = data.index;
                      });
                    },
                  )).toList(),

                ),
              ),
            )),
        Padding(
            padding: EdgeInsets.all(10),
            child: Material(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.blue,
              child: MaterialButton(
                  padding: EdgeInsets.fromLTRB(60, 17, 60, 17),
                  highlightElevation: 10.0,
                  child:Text(
                    'Submit',
                    style: TextStyle(
                        letterSpacing: 1.0,
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800),
                  ),

                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Welcome()));
                  }


              ),
            )

        )

      ],
    );
  }
}

class Day2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Day 2 Events:', style: TextStyle()),
          backgroundColor: Colors.indigo[800],
        ),
        backgroundColor: Colors.blueGrey[800],
        body: RadioGroup2()
      ),
    );
  }
}

class RadioGroup2 extends StatefulWidget {
  @override
  RadioGroupWidget2 createState() => RadioGroupWidget2();
}

class Event_List2 {
  String name;
  int index;
  Event_List2({this.name, this.index});
}

class RadioGroupWidget2 extends State {

// Default Radio Button Item
  String radioItem = 'Select Events:';

// Group Value for Radio Button.
  int id = 1;

  List<Event_List2> fList = [
    Event_List2(
      index: 1,
      name: "Live Project ",
    ),
    Event_List2(
      index: 2,
      name: "Fitness Challenge",
    ),
    Event_List2(
      index: 3,
      name: "Selfie Wall Frame",
    ),
    Event_List2(
      index: 4,
      name: "Recycle",
    ),
    Event_List2(
      index: 5,
      name: "Quiz",
    ),
    Event_List2(
      index: 6,
      name: "Stand Up Comedy",
    ),
    Event_List2(
      index: 7,
      name: "Clash of bands",
    ),
    Event_List2(
      index: 8,
      name: "Group Dance",
    ),
  ];

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
            padding : EdgeInsets.all(14.0),
            child: Text('$radioItem', style: TextStyle(fontSize: 23))
        ),

        Expanded(
            child: Container(
              height: 350.0,
              child: SingleChildScrollView(
                child:   Column(
                  children:
                  fList.map((data) => RadioListTile(
                    title: Text("${data.name}"),
                    groupValue: id,
                    value: data.index,
                    onChanged: (val) {
                      setState(() {
                        radioItem = data.name ;
                        id = data.index;
                      });
                    },
                  )).toList(),
                ),
              ),
            )),
        Padding(
            padding: EdgeInsets.all(10),
            child: Material(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.blue,
              child: MaterialButton(
                  padding: EdgeInsets.fromLTRB(60, 17, 60, 17),
                  highlightElevation: 10.0,
                  child:Text(
                    'Submit',
                    style: TextStyle(
                        letterSpacing: 1.0,
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800),
                  ),

                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Welcome()));
                  }


              ),
            )

        )
      ],
    );
  }
}
class Day3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Day 3 Events:', style: TextStyle()),
          backgroundColor: Colors.indigo[800],
        ),
        backgroundColor: Colors.blueGrey[800],
        body: RadioGroup3(),
      ),
    );
  }
}

class RadioGroup3 extends StatefulWidget {
  @override
  RadioGroupWidget3 createState() => RadioGroupWidget3();
}

class Event_List3 {
  String name;
  int index;
  Event_List3({this.name, this.index});
}

class RadioGroupWidget3 extends State {

// Default Radio Button Item
  String radioItem = 'Select Events:';

// Group Value for Radio Button.
  int id = 1;

  List<Event_List3> fList = [
    Event_List3(
      index: 1,
      name: "Yoga Challenge",
    ),
    Event_List3(
      index: 2,
      name: "PUBG",
    ),
    Event_List3(
      index: 3,
      name: "Treasure Hunt",
    ),
    Event_List3(
      index: 4,
      name: "Non-Fire Cooking",
    ),
    Event_List3(
      index: 5,
      name: "Movie Making",
    ),
    Event_List3(
      index: 6,
      name: "Antakshari",
    ),
    Event_List3(
      index: 7,
      name: "Fashion Presentation",
    ),

  ];

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
            padding : EdgeInsets.all(14.0),
            child: Text('$radioItem', style: TextStyle(fontSize: 23))
        ),

        Expanded(
            child: Container(
              height: 350.0,
              child: SingleChildScrollView(
                child:   Column(
                  children:
                  fList.map((data) => RadioListTile(
                    title: Text("${data.name}"),
                    groupValue: id,
                    value: data.index,
                    onChanged: (val) {
                      setState(() {
                        radioItem = data.name ;
                        id = data.index;
                      });
                    },
                  )).toList(),
                ),
              ),
            )),
        Padding(
            padding: EdgeInsets.all(10),
            child: Material(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.blue,
              child: MaterialButton(
                  padding: EdgeInsets.fromLTRB(60, 17, 60, 17),
                  highlightElevation: 10.0,
                  child:Text(
                    'Submit',
                    style: TextStyle(
                        letterSpacing: 1.0,
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800),
                  ),

                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Welcome()));
                  }


              ),
            )

        )

      ],
    );
  }
}