import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  InfoCard(this.eventname, this.info);

  String eventname, info;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('$eventname', style: TextStyle()),
        ),
        body: Card(
          child: Text('$info',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
        ),
      ),
    );
  }
}
