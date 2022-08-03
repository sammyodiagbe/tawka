import 'package:firebase_auth/firebase_auth.dart';
import "package:cloud_firestore/cloud_firestore.dart";

class AuthService implements BaseAuth {
  final _firebaseInstance = FirebaseAuth.instance;
  final _firebaseFirestore = FirebaseFirestore.instance;

  Stream<User?> get authStateChanges => _firebaseInstance.authStateChanges();

  User? get getCurrentUser => _firebaseInstance.currentUser;

  @override
  Future<bool> createUserAccount(Map<String, dynamic> data) async {
    String email = data['email'];
    String password = data['password'];
    String username = data['username'];
    bool success = false;
    try {
      UserCredential user = await _firebaseInstance
          .createUserWithEmailAndPassword(email: email, password: password);
      await user.user?.updateDisplayName(username);
      CollectionReference userEntry = _firebaseFirestore.collection('users');
      userEntry
          .add({'name': 'hello world', 'otherthing': 'testing'})
          .then((value) => print('user added'))
          .catchError((error) {
            print('Something went wrong haaa');
            print(error);
          });
      success = true;
    } on FirebaseAuthException catch (error) {
      print(error);
      if (error.code == 'weak-password') {
        print('email is already in use');
      } else if (error.code == 'email-already-in-use') {
        print('email is already in use');
      }
    } catch (error) {
      print('Something went wrong');
      print(error);
    }
    return success;
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
