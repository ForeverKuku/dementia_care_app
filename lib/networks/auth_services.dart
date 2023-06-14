import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  Future<String?> registration({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return 'Success';
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak password ') {
        return 'The password provided is too weak.';
      } else if (e.code == 'Email already used, please provide another email') {
        return 'The account already exists..';
      } else {
        return e.message;
      }
    } catch (e) {
      return e.toString();
    }
  }

  Future<String?> login({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return 'Login Successful';
    } on FirebaseAuthException catch (e) {
      if (e.code == 'User not found') {
        return 'Incorrect email.';
      } else if (e.code == 'wrong password') {
        return 'Incorrect password.';
      } else {
        return e.message;
      }
    } catch (e) {
      return e.toString();
    }
  }
}
