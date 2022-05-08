import "package:firebase_auth/firebase_auth.dart";
import "package:firebase_core/firebase_core.dart";

class Authentication {
  static Future<FirebaseApp> initialiLizeapp() async {
    FirebaseApp firebaseapp = await Firebase.initializeApp();

    return firebaseapp;

  }
  
}