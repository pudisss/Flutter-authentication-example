import "package:firebase_auth/firebase_auth.dart";
import "package:google_sign_in/google_sign_in.dart";


class Authentification {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;


  Future singInWithGoogle() async {

    final googleSignin = GoogleSignIn();
    final googleUser = await googleSignin.signIn();
    if (googleUser != null) {
      final googleAuth = await googleUser.authentication;
      if (googleAuth.idToken != null) {
        final userCredential = await _firebaseAuth.signInWithCredential(GoogleAuthProvider.credential(idToken: googleAuth.idToken, accessToken: googleAuth.idToken));
        return userCredential.user;
      };
      
    } else {
      throw FirebaseAuthException(message: "Signin aboarded by the user", code: "ERROR_ABORDED_BY_USER");
    }

  }

  Future<void> singOut() async {
    final googleSignin = GoogleSignIn();

    await googleSignin.signOut();
    await _firebaseAuth.signOut();

  }

}