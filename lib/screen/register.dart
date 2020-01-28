import 'package:flutter/material.dart';
//import"package:firebase_auth/firebase_auth.dart";
//import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
//import 'package:firebase_messaging/firebase_messaging.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:registration_app/main.dart';
import 'EventPageReg.dart';

//final FirebaseApp app = FirebaseApp(
//  options: FirebaseOptions(
//    googleAppID:'1:619665210419:android:f9a15518d3971aaa347746',
//    apiKey:"AIzaSyCDjzsXNafaDbNcCts8kKI2NCg_hWvLEzo",
//
//  )
//);

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  Future navigateToEventPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => EventPageReg()));
  }

  final DatabaseReference database =
      FirebaseDatabase.instance.reference().child('Au_Events');
//   FirebaseMessaging firebaseMessaging = new FirebaseMessaging();

  final _formKey = GlobalKey<FormState>();
  String name;
  String college;
  String email;
  String phone_No;
  String passkey;
//  @override
//  void initState() {
//  firebaseMessaging.configure(
//    onLaunch: (Map<String, dynamic>msg)async(
//   print('onLaunch: $message');
//    )
//  );
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //to avoid lack and yellow bar above keyboard
      resizeToAvoidBottomPadding: false,
      body: Card(
          child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Color(0xff28313B), Color(0xff485461)])),
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 40, 20, 10),
//          child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    onChanged: (value) {
                      name = value;
                    },
                    autofocus: true,
                    decoration: InputDecoration(
                      labelText: 'Name',
                      icon: const Icon(Icons.person),
                    ),
                    //adding validator
                    validator: (input) =>
                        input.length < 3 ? 'Enter the Name.' : null,
//                      onSaved: (input)=> name=input,
                  ),
                  TextFormField(
                    onChanged: (value) {
                      college = value;
                    },
                    decoration: InputDecoration(
                      labelText: 'College Name',
                      icon: const Icon(Icons.not_listed_location),
                    ),
                    //adding validator
                    validator: (input) =>
                        input.length < 3 ? 'Enter the college name.' : null,
//                      onSaved: (input)=> college=input,
                  ),
                  TextFormField(
                    onChanged: (value) {
                      email = value;
                    },
                    decoration: InputDecoration(
                      labelText: 'E-mail ID',
                      icon: const Icon(Icons.email),
                    ),
                    //adding validator
                    validator: (input) =>
                        !input.contains('@') ? 'Not a Valid E-mail' : null,
//                      onSaved: (input)=>email =input,
                  ),
                  TextFormField(
                      onChanged: (value) {
                        phone_No = value;
                      },
                      decoration: InputDecoration(
                        labelText: 'Phone no.',
                        icon: const Icon(Icons.phone),
                      ),
                      //adding validator
                      validator: (input) =>
                          input.length < 10 ? 'Not a Valid Phone NO.' : null,
//                      onSaved: (input)=> phone_No=input,
                      keyboardType: TextInputType.number),
                  TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Passkey',
                        icon: const Icon(Icons.vpn_key),
                      ),
                      //adding validator
                      obscureText: true,
                      validator: (input) => input.length == 4
                          ? 'Passkey must be of 4 digits'
                          : null,
                      onSaved: (input) => passkey = input,
                      keyboardType: TextInputType.number),

                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
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
                            _submit();
                                }


    ),
    )

    ),
  ],
    ),
    ]
    ),
    ),
    ),
    )
    )
    ),

  );
}


//                         child: RaisedButton(
//                           highlightElevation: 10.0,
//                              onPressed: _submit,
//                           child: Text('Submit'),


  void _submit() {
//    Future navigateTowelcome(context) async {
//      Navigator.push(
//          context, MaterialPageRoute(builder: (context) => Welcome()));
//    } //

    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
//      print(name);
//      print(college);
//      print(phone_No);
//      print(email);

    showDialog(
    context: context,
    builder: (BuildContext context) {
    // return object of type Dialog
    return AlertDialog(
    title: new Text('General Guidlines :-'),
    content: new Text(
    "1. Before registering more than 1 event make sure time is not collapsing\n \n 2. No more than 3 students from same college can register in same event \n \n 3.For any querry please contact respective event coordinator  "),
    actions: <Widget>[
    // usually buttons at the bottom of the dialog
    new RaisedButton(
    child: new Text("I agree"),
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) =>
    EventPageReg()));
    },
    ),
    ],
    );
    },
    );
    };
      database.push().set({
        'name': name,
        'college_name': college,
        'phone_no': phone_No,
        'email': email,
      });
    }
  }

