import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthController {
  final FirebaseAuth auth = FirebaseAuth.instance;

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> createUser(String email, String password, String fname,
      String lname, String number) async {
    String error = "";

    FirebaseAuth.instance.setLanguageCode('en');

    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email.toLowerCase(),
        password: password,
      );

      try {
        await userCredential.user?.sendEmailVerification();
      } catch (e) {
        error = "Error Sending Email Verification";
      }

      try {
        await _firestore.collection('Users').doc(userCredential.user?.uid).set({
          'uid': userCredential.user?.uid,
          'email': email.toLowerCase(),
          'firstname': fname,
          'lastname': lname,
          'number': number,
          'createdAt': FieldValue.serverTimestamp(),
        });
      } catch (e) {
        error = 'An error occurred while trying to create your account.';
      }
    } on FirebaseAuthException catch (e) {
      if (e.code.contains('email-already-in-use')) {
        error = 'The account already exists for that email.';
      } else if (e.code == 'weak-password') {
        error = 'The password provided is too weak.';
      } else {
        error = e.message ?? 'An error occurred.';
      }
    }

    return error;
  }

  Future<String> loginuser(String email, String password) async {
    String error = "";
    try {
      await auth.signInWithEmailAndPassword(
        email: email.toLowerCase(),
        password: password,
      );
    } catch (e) {
      error = "Incorrect email or password";
    }
    return error;
  }

  Future<String> changepassword(String oldpassword, String newpassword) async {
    String error = "";
    try {
      final user = FirebaseAuth.instance.currentUser;

      await user?.reauthenticateWithCredential(
        EmailAuthProvider.credential(
          email: user.email!,
          password: oldpassword,
        ),
      );
      user?.updatePassword(newpassword);

      FirebaseAuth.instance.signOut();
    } on FirebaseAuthException catch (e) {
      error = e.message!;
    }
    return error;
  }
}
