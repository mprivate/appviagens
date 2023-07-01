import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBapfxJwYa26zTWUdoRIQ9Oq7jS29BSa5U",
            authDomain: "appviagens-19cc0.firebaseapp.com",
            projectId: "appviagens-19cc0",
            storageBucket: "appviagens-19cc0.appspot.com",
            messagingSenderId: "857058314129",
            appId: "1:857058314129:web:500e14ea36ba7252e7bc30"));
  } else {
    await Firebase.initializeApp();
  }
}
