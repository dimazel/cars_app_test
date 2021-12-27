import 'package:cars_test_app/screens/HomePage/home_screen.dart';
import 'package:cars_test_app/screens/live_video_screen/live_video_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  _AuthWidgetState createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    return Column(
      children: [
        TextField(
          controller: emailController,
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF003C8F)),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF003C8F)),
            ),
            prefixIcon: Icon(
              Icons.account_circle_outlined,
              color: Color(0xFF003C8F),
            ),
            hintText: "Username",
            hintStyle:
            TextStyle(color: const Color(0xFF003C8F), fontSize: 18),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        TextField(
          controller: passwordController,
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF003C8F)),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF003C8F)),
            ),
            prefixIcon: Icon(
              Icons.lock,
              color: Color(0xFF003C8F),
            ),
            hintText: "Password",
            hintStyle:
            TextStyle(color: Color(0xFF003C8F), fontSize: 18),
          ),
        ),
        SizedBox(
          height: 73,
        ),
        InkWell(


          onTap: () async {
            if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty){
            try{await FirebaseAuth.instance.signInWithEmailAndPassword(
                email: emailController.text + '@gmail.com',
                password: passwordController.text);
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
            } catch (e) {
              showDialog(context: context, builder: (context) => const AlertDialog(title: Text('User not found'),));
            }} else {               showDialog(context: context, builder: (context) => const AlertDialog(title: Text('Fill in the Login and Password fields'),));}
            setState(() {});
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 14),
            width: double.infinity,
            color: Color(0xFF1565C0),
            child: Center(
              child: Text('SIGN IN', style: TextStyle(color: Colors.white, fontSize: 18, fontFamily: "Roboto",
                  fontWeight: FontWeight.w700),),
            ),
          ),
        ),
        SizedBox(
          height: 13,
        ),
        Text(
          'or',
          style: TextStyle(
            color: Color(0xFF003C8F),
            fontSize: 18,
            fontFamily: "Roboto",
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 14,
        ),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => LiveVideoScreen()));
            setState(() {

            });
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 14),
            width: double.infinity,
            color: Color(0xFFBBDEFB),
            child: Center(
              child: Text(
                'LIVE VIDEO',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ),

      ],
    );
  }
}

