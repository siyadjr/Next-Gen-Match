
import 'package:firebase_auth/firebase_auth.dart';


class AuthServices {
final auth=FirebaseAuth.instance;
  Future<void> signUpUser(String mail, String password) async {
  final userCredential= await auth.createUserWithEmailAndPassword(email: mail, password: password);
  
  }

  Future<void> signInUser() async {}
}
