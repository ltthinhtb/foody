import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'mainscreen.dart';




class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController email = new TextEditingController();
  TextEditingController pass = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          FlatButton(
            child: Text('Sign Up',style: TextStyle(fontSize: 20.0),),
              onPressed:() {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => MainScreen()));
              }
          )
        ],
        title: Text('Login'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: AssetImage('images/login.jpg'),
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(
                size: 100.0,
              ),
              Form(
                child: Theme(
                  data: ThemeData(
                    brightness: Brightness.dark,
                    primaryColor: Colors.teal,
                    inputDecorationTheme: InputDecorationTheme(
                      labelStyle: TextStyle(color: Colors.teal,fontSize: 20.0)
                    )
                  ),
                  child: Container(
                    padding: EdgeInsets.all(40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Enter Mail'
                          ),
                          controller: email,
                          keyboardType: TextInputType.emailAddress,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Enter Password'
                          ),
                          controller: pass,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        Padding(padding: EdgeInsets.all(20.0)),
                        MaterialButton(
                          onPressed: () {SignIn();},
                          color: Colors.teal,
                          textColor: Colors.white,
                          child: Text(
                            'Login'
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      )
    );
  }

  void SignIn() async{
    FirebaseUser user;
    try{
      user = (await _auth.signInWithEmailAndPassword(email: email.text, password: pass.text)) as FirebaseUser;
    }
    catch(e){
      print(e.toString());
    }
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => MainScreen() ));

  }


}

