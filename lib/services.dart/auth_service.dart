import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class AuthService extends ChangeNotifier implements BaseAuth {
  final _firebaseInstance = FirebaseAuth.instance;

  @override
  Future<void> createUserAccount(Map<String, dynamic> data) async {
    String email = data['email'];
    String password = data['password'];
    String username = data['username'];
    try {
      UserCredential user = await _firebaseInstance
          .createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (error) {
      if (error.code == 'weak-password') {
        print('email is already in use');
      } else if (error.code == 'email-already-in-use') {
        print('email is already in use');
      }
    } catch (error) {
      print('Something went wrong');
      print(error);
    }
  }

  @override
  Future<void> logUserIn(Map<String, dynamic> loginData) async {
    final String email = loginData['email'];
    final String password = loginData['password'];
    try {
      UserCredential userCredentials = await _firebaseInstance
          .signInWithEmailAndPassword(email: email, password: password);
      print(userCredentials);
    } on FirebaseAuthException catch (error) {
      if (error.code == 'invalid-email' || error.code == 'wrong-password') {
        print('Invalid credentials');
      } else if (error.code == 'user-not-found') {
        print('User account does not exist.');
      }
    } catch (error) {
      print('Something went wrong');
      print(error);
    }
  }

  Future<void> signOut() async {
    await _firebaseInstance.signOut();
  }

  // Stream<User?> userStateChanges() {
  //   User? user;
  //   _firebaseInstance.authStateChanges().listen((User? user) {
  //     if (user != null) user = user;
  //   });
  //   return user;
  // }
}

abstract class BaseAuth {
  // creating a new user account
  Future<void> createUserAccount(Map<String, dynamic> data);

  // signing user out
  Future<void> signOut();

  // logging user in
  Future<void> logUserIn(Map<String, dynamic> loginData);
}
