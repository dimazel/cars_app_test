import 'package:cars_test_app/screens/live_video_screen/live_video_screen.dart';
import 'package:flutter/material.dart';
import 'auth_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Container(
            width: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'WELCOME',
                  style: TextStyle(
                      fontSize: 48,
                      color: Color(0xFF1565C0),
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 71,
                ),


                AuthWidget(),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
