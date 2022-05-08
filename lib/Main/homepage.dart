import "package:flutter/material.dart";
import 'package:googlea/Main/authentication.dart';

class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  Future<void> SignOut() async {
    await Authentification().singOut();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: RaisedButton(
          onPressed: SignOut,
          child: Text("Sign out"),
        )
      )
      
    );
  }
}