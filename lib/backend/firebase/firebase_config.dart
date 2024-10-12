import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCVWAooyouSBs2hp2EK0Bo6pbmZuFyCwCM",
            authDomain: "yumyumhero-1e0f6.firebaseapp.com",
            projectId: "yumyumhero-1e0f6",
            storageBucket: "yumyumhero-1e0f6.appspot.com",
            messagingSenderId: "450573658218",
            appId: "1:450573658218:web:85a10612b5f29a327b8213",
            measurementId: "G-2FTY3JYV3W"));
  } else {
    await Firebase.initializeApp();
  }
}
