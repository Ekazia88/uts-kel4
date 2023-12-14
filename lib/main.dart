import 'package:flutix/Intropage.dart';
import 'package:flutix/SigInPage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeFirebase();
  runApp(const MyApp());
}

initializeFirebase() async {
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
 );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutix',
      home: SplashScreen(),
    );
  }
}
