import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC6DPt9KHCjctzr0mN4B2lnbOdHXLcsaE8",
            authDomain: "app-mobile-46da6.firebaseapp.com",
            projectId: "app-mobile-46da6",
            storageBucket: "app-mobile-46da6.appspot.com",
            messagingSenderId: "613858571649",
            appId: "1:613858571649:web:3b7d75af30a5965258e480",
            measurementId: "G-2R62KM9957"));
  } else {
    await Firebase.initializeApp();
  }
}
