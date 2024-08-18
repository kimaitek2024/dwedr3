import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAloCz0_NYcS_8J8ml369SGFX40qyG-K3I",
            authDomain: "a-a-n-p-school-p2tmql.firebaseapp.com",
            projectId: "a-a-n-p-school-p2tmql",
            storageBucket: "a-a-n-p-school-p2tmql.appspot.com",
            messagingSenderId: "723113808411",
            appId: "1:723113808411:web:0270c19072719f0613debe"));
  } else {
    await Firebase.initializeApp();
  }
}
