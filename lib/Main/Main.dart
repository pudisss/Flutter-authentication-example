import "package:flutter/material.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:firebase_core/firebase_core.dart";
import "package:provider/provider.dart";
import "login.dart";
import "homepage.dart";

class Main extends StatefulWidget {
  const Main({ Key? key }) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    var user = Provider.of<User?>(context);
    if (user == null) {
      return Loginpage();
    } 
    return Homepage();
    
    
  }
}