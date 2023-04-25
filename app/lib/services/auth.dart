import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pohnpeian_language_app/models/userModel.dart' as um;

class Auth { // Authenticate user sign in 
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  User? get currentUser => _firebaseAuth.currentUser;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<void> signInWithEmailAndPassword( // Email and password for user sign in
      {required String email, required String password}) async {
    await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  Future<void> createUserWithEmailAndPassword( // Account creation for user sign in
      {required String email, required String password}) async {
    await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
  }

  Future<void> signOut() async {// Account sign out
    await _firebaseAuth.signOut();
  }

  Future<void> deleteUser() async {
    try {
      final User? user = _firebaseAuth.currentUser;
      FirebaseFirestore _firestore = FirebaseFirestore.instance;
      if (user != null) {
        await user.delete();
        await _firestore.collection('users').doc(user.uid).delete();// Delete the account from the database
        um.UserPreferences.myUser.reset();
      }
    } catch (e) {}// While also catching exceptions
  }
}
