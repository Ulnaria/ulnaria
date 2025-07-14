import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDCK4g0xx93GXnS3KRnU3N6KunSYN8vB0s",
            authDomain: "graalwallet.firebaseapp.com",
            projectId: "graalwallet",
            storageBucket: "graalwallet.appspot.com",
            messagingSenderId: "916535183041",
            appId: "1:916535183041:web:103bb42d550b27b242f640",
            measurementId: "G-BXWQJ6GQY0"));
  } else {
    await Firebase.initializeApp();
  }
}
