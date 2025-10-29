import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDpOte-YKJeM366Xqrm500z8KO8LQ0vtyI",
            authDomain: "e-c-s-project-d7pu2p.firebaseapp.com",
            projectId: "e-c-s-project-d7pu2p",
            storageBucket: "e-c-s-project-d7pu2p.firebasestorage.app",
            messagingSenderId: "912811824295",
            appId: "1:912811824295:web:33b4146c52f607d7e37782"));
  } else {
    await Firebase.initializeApp();
  }
}
