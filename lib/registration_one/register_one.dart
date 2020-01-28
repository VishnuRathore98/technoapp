//import 'package:flutter/material.dart';
//import 'package:firebase_database/firebase_database.dart';
//
//class Register extends StatefulWidget {
//
//  @override
//  _RegisterState createState() => _RegisterState();
//}
//
//class _RegisterState extends State<Register> {
//  //   FirebaseMessaging firebaseMessaging = new FirebaseMessaging();
//
//  final _formKey = GlobalKey<FormState>();
//  String name;
//  String college;
//  String email;
//  String phone_No;
//  String passkey;
//
//   DatabaseReference database = FirebaseDatabase.instance.reference()
//      .child($table_name);
//
//  static String $table_name;
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      //to avoid lack and yellow bar above keyboard
//        resizeToAvoidBottomPadding: false,
//        body: Card(
//        child: Container(
//        decoration: BoxDecoration(
//        gradient: LinearGradient(
//        begin:Alignment.topRight,
//        end: Alignment.bottomLeft,
//        colors: [Color(0xff28313B), Color(0xff485461
//        )
//        ]
//    )),
//    child: Padding(
//    padding: EdgeInsets.fromLTRB(10, 40, 20,10),
////            child: SingleChildScrollView(
//    child: Form(
//    key: _formKey,
//    child: SingleChildScrollView(
//    child: Column(
//    mainAxisSize: MainAxisSize.min,
//    mainAxisAlignment: MainAxisAlignment.center,
//    children: <Widget>[
//    TextFormField(
//    onChanged: (value) {
//    name = value;
//    },
//    autofocus: true,
//    decoration: InputDecoration(labelText: 'Name',
//    icon: const Icon(Icons.person),),
//    //adding validator
//    validator: (input)=>input.length<3 ? 'Enter the Name.':null,
////                      onSaved: (input)=> name=input,
//    ),
//    TextFormField(
//    onChanged: (value) {
//    college = value;
//    },
//    decoration: InputDecoration(labelText: 'College Name',
//    icon: const Icon(Icons.not_listed_location),),
//    //adding validator
//    validator: (input)=>input.length<3 ? 'Enter the college name.':null,
////                      onSaved: (input)=> college=input,
//    ),
//    TextFormField(
//    onChanged: (value){
//    email=value;
//    },
//    decoration: InputDecoration(
//    labelText: 'E-mail ID',
//    icon: const Icon(Icons.email),),
//    //adding validator
//    validator: (input)=>!input.contains('@') ? 'Not a Valid E-mail':null,
////                      onSaved: (input)=>email =input,
//    ),
//    TextFormField(
//    onChanged: (value) {
//    phone_No = value;
//    },
//    decoration: InputDecoration(labelText: 'Phone no.',
//    icon: const Icon(Icons.phone),
//    ),
//    //adding validator
//    validator: (input)=>input.length <10 ? 'Not a Valid Phone NO.':null,
////                      onSaved: (input)=> phone_No=input,
//    keyboardType: TextInputType.number
//    ),
//    TextFormField(
//    decoration: InputDecoration(labelText: 'Passkey',
//    icon: const Icon(Icons.vpn_key),
//    ),
//    //adding validator
//    obscureText: true,
//    validator: (input)=>input.length == 4 ? 'Passkey must be of 4 digits':null,
//    onSaved: (input)=> passkey=input,
//    keyboardType: TextInputType.number
//    ),
//
//    SizedBox(height: 5),
//    Row(
//    mainAxisAlignment: MainAxisAlignment.center,
//    mainAxisSize: MainAxisSize.max,
//    children: <Widget>[
//
//    Padding(
//    padding: EdgeInsets.all(10),
//
//    child: Material(
//    borderRadius: BorderRadius.circular(30.0),
//    color: Colors.blue,
//    child: MaterialButton(
//
//    padding: EdgeInsets.fromLTRB(60, 17, 60, 17),
//    highlightElevation: 10.0,
//    onPressed: (){
//    child: RaisedButton(
//    highlightElevation: 10.0,
//    onPressed: _submit,
//    child: Text('Submit')
//    ),),),),],),
//    ],
//    ),
//    ),
//    ),
//    ),
//    )
//    ),
//    );
//    }
//    void _submit (){
//    Future navigateTowelcome(context) async {
//    Navigator.push(context, MaterialPageRoute(builder: (context) => Welcome()));
//    }//
//
//    if (_formKey.currentState.validate()){
//    _formKey.currentState.save();
//    print(name);
//    print(college);
//    print(phone_No);
//    print(email);
//
//    showDialog(
//    context: context,
//    builder: (BuildContext context) {
//    // return object of type Dialog
//    return AlertDialog(
//    title: new Text(name+"haa chl baap ko mt sikhaaa"),
//    content: new Text("You are registerd sucessfully"),
//    actions: <Widget>[
//    // usually buttons at the bottom of the dialog
//    new FlatButton(
//    child: new Text("Ok"),
//    onPressed: () {
//    navigateTowelcome(context);
//    },
//    ),
//    ],
//    );
//    },
//    );
//    database.push().set(
//    {
//    'name': name,
//    'college_name':college,
//    'phone_no': phone_No,
//    'email':email,
//    });
//    }
//    }
//  }
