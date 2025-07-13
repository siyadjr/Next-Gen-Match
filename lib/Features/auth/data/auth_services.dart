import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  /// Sign up a new user with email and password, and store user in Firestore
  Future<void> signUpUser(String email, String password) async {
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      final uid = userCredential.user?.uid;
      if (uid != null) {
        await _firestore.collection('Users').doc(uid).set({
          'email': email,
          'createdAt': FieldValue.serverTimestamp(),
        });
        print('User signed up and saved to Firestore');
      }
    } catch (e) {
      print('Sign up error: $e');
      rethrow;
    }
  }

  /// Sign in an existing user and check if they exist in Firestore
  Future<void> signInUser(String email, String password) async {
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      final uid = userCredential.user?.uid;
      if (uid != null) {
        final userDoc = await _firestore.collection('Users').doc(uid).get();
        if (!userDoc.exists) {
          print('User does not exist in Firestore, please sign up');
        } else {
          print('User signed in successfully');
        }
      }
    } catch (e) {
      print('Sign in error: $e');
      rethrow;
    }
  }
}
