import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCXkgkVUwfWgDgjVSHCFNP4DBnf2JPPc1k",
            authDomain: "ecs-p-8cb6e.firebaseapp.com",
            projectId: "ecs-p-8cb6e",
            storageBucket: "ecs-p-8cb6e.firebasestorage.app",
            messagingSenderId: "475946606951",
            appId: "1:475946606951:web:5dbd34fde5e24c2d294fc2"));
  } else {
    await Firebase.initializeApp();
  }
}
