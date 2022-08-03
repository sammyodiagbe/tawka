import "package:cloud_firestore/cloud_firestore.dart";
import "package:firebase_auth/firebase_auth.dart";

class ChatService {
  final _firebaseAuthInstance = FirebaseAuth.instance;
  final _firestoreInstance = FirebaseFirestore.instance;

  // Future<void> createConversation() {

  // }

  // list all users
  Stream<QuerySnapshot> get getUsers =>
      _firestoreInstance.collection('users').snapshots();
}
