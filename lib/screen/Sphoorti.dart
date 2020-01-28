import 'package:flutter/material.dart';

class Sphoorti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Sphoorti (16,17,18 Feb)', style: TextStyle()),
          backgroundColor: Colors.indigo[800],
        ),
        backgroundColor: Colors.blueGrey[800],
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Row(children: <Widget>[
                    buildPadding('sphoortiimg/tabletenis.png'),
                    buildPadding('sphoortiimg/badminton.png')
                  ]),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Row(children: <Widget>[
                    buildPadding('sphoortiimg/carrom.png'),
                    buildPadding('sphoortiimg/chess.png')
                  ]),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Row(children: <Widget>[
                    buildPadding('sphoortiimg/rubiks.png'),
                    buildPadding('sphoortiimg/tug_of_war.png')
                  ]),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Row(children: <Widget>[
                    buildPadding('sphoortiimg/football2.png'),
                    buildPadding('sphoortiimg/basketBall.png')
                  ]),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Row(children: <Widget>[
                    buildPadding('sphoortiimg/kabaddi.png'),
                    buildPadding('sphoortiimg/volleyball.png')
                  ]),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Row(children: <Widget>[
                    buildPadding('sphoortiimg/cricket.png'),
                  ]),
                ),
              ],
            ),
          ]),
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