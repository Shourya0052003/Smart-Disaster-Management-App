import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseService {
  static final FirebaseAuth _auth = FirebaseAuth.instance;
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Firebase Authentication - Login User
  static Future<User?> loginUser(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      throw Exception('Failed to log in: $e');
    }
  }

  // Firebase Firestore - Fetch Resources
  static Future<List<Resource>> fetchResources() async {
    try {
      QuerySnapshot snapshot = await _firestore.collection('resources').get();
      return snapshot.docs.map((doc) {
        return Resource.fromMap(doc.data() as Map<String, dynamic>);
      }).toList();
    } catch (e) {
      throw Exception('Failed to load resources: $e');
    }
  }

  // Firebase Messaging - Setup Notifications
  static Future<void> setupFirebaseMessaging() async {
    // Add Firebase Messaging setup code here
  }
}
