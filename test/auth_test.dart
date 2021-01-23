 import 'package:firebase_auth/firebase_auth.dart';

class LoginUser {
withPhoneNumber({String phoneNumber}) async {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    firebaseAuth.verifyPhoneNumber(
    phoneNumber: phoneNumber, 
    verificationCompleted: (AuthCredential authCredential) async {
      UserCredential authResult = await firebaseAuth.signInWithCredential(authCredential);
      var firebaseUser = authResult.user;

      if (firebaseUser!=null) {
        print("user is logged in");
        return true;
      }else{
        print("error");
        return false;
      }

    }, 

    verificationFailed: (FirebaseAuthException firebaseAuthException){
      print("${firebaseAuthException.code}: ${firebaseAuthException.message}");
    }, 

    codeSent: (String verificationID,[int forceResendingToken]){
      print(verificationID);
    }, 
    codeAutoRetrievalTimeout: null
    );
    return false;
  }

   
}
