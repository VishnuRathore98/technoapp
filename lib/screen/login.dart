import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email;
  String passkey;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Scaffold(
          body: Card(
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin:Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Color(0xff28313B) , Color(0xff485461
                        )]
                    )
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 40, 20,10),
//          child: SingleChildScrollView(
                  child: Center(
                    child: Form(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[

                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: 'E-mail ID',
                                icon: const Icon(Icons.email),),
                              //adding validator
                              validator: (input)=>!input.contains('@') ? 'Not a Valid E-mail':null,
                              onSaved: (input)=>email =input,
                            ),
                            TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(labelText: 'Passkey',
                                  icon: const Icon(Icons.vpn_key),
                                ),
                                //adding validator
                                validator: (input)=>input.length == 4 ? 'Passkey must be of 4 digits':null,
                                onSaved: (input)=> passkey=input,
                                keyboardType: TextInputType.number
                            ),

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
                                      onPressed: (){},
                                      padding: EdgeInsets.fromLTRB(60, 17, 60, 17),
                                      highlightElevation: 10.0,
                                      //onPressed: _login,
                                      child: Text('Login',style:TextStyle(
                                          letterSpacing: 0.3,
                                          color: Colors.white,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w800
                                      ),),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
          ),
        ),
      ),
    );
  }
}


