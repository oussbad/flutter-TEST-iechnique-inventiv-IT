import 'package:flutter/material.dart';
import 'package:test_technique_inventiv_it/FireBase_Firestore.dart';
import 'package:test_technique_inventiv_it/FirebaseAutosignUp.dart';
import 'package:test_technique_inventiv_it/FirebaseAutosignIn.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Home_mobile.dart';
import 'firebase_options.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(
        builder: (context, constraints) {

            // Mobile layout
            return Home();
          }
        ,
      ),
    );
  }
}
