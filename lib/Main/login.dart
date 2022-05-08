import "package:flutter/material.dart";
import 'package:googlea/authentication.dart';
import "package:firebase_auth/firebase_auth.dart";
import "authentication.dart";
class Loginpage extends StatefulWidget {
  const Loginpage({ Key? key }) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {

  Future<void> signinWithGoogle() async {
    await Authentification().singInWithGoogle();
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Center(
          child: RaisedButton(
            onPressed: signinWithGoogle,
            child: Text("Sign in with google")
          )
        )
      )
    );
  }
}