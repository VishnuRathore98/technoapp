import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:registration_app/main.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:registration_app/screen/InfoCard.dart';

class To_Day_Sphoorti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Sphoorti', style: TextStyle()),
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
          child: RadioGroup()
        ),
      ),
    );
  }
}

class RadioGroup extends StatefulWidget {
  @override
  RadioGroupWidget createState() => RadioGroupWidget();
}

class Event_List {
  String name;
  int index;
  int value;
  Event_List({this.name, this.index,this.value});
}

class RadioGroupWidget extends State {

// Default Radio Button Item
  String radioItem = 'Events:';

// Group Value for Radio Button.
  int id = 1;

  List<Event_List> fList = [
    Event_List(
      index: 1,
      name: "Table Tennis",
      value:1,
    ),
    Event_List(
      index: 2,
      name: "Badminton",
      value:1,
    ),
    Event_List(
      index: 3,
      name: "Carom",
      value:1,
    ),
    Event_List(
      index: 4,
      name: "Chess",
      value:1,
    ),
    Event_List(
      index: 5,
      name: "Rubik's Cube",
    ),
    Event_List(
      index: 6,
      name: "Tug of War",
    ),
    Event_List(
      index: 7,
      name: "Football",
    ),
    Event_List(
      index: 8,
      name: "Basketball",
    ),
    Event_List(
      index: 9,
      name: "Kabadi",
    ),
    Event_List(
      index: 10,
      name: "Volleyball",
    ),
    Event_List(
      index: 11,
      name: "Cricket",
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
