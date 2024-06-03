import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCDmLgWiVIyjmT0milJ8T7KvDjXOeP8ZQE",
            authDomain: "flutter3-d-thingiverse-tk90wd.firebaseapp.com",
            projectId: "flutter3-d-thingiverse-tk90wd",
            storageBucket: "flutter3-d-thingiverse-tk90wd.appspot.com",
            messagingSenderId: "124397657780",
            appId: "1:124397657780:web:2a67c519fc7ea6eeaa81e1"));
  } else {
    await Firebase.initializeApp();
  }
}
