import 'package:cars_test_app/screens/landing.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() async  {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.landscapeLeft,
  //   DeviceOrientation.landscapeRight,
  // ]);
  runApp(const StartScreen());
}
 class StartScreen extends StatelessWidget {
   const StartScreen({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return LandinPage();
   }
 }
