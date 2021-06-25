import 'package:biawazo/SingupPage/EmailSignInPage.dart';
import 'package:biawazo/SingupPage/RegistrationLanding.dart';
import 'package:flutter/material.dart';

import 'SignUpbutton.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Sign In",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 34,
            ),
          ),
          SizedBox(
            height: 48,
          ),
          buildRaisedButton(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset("images/google-logo.png"),
                  Text("Sign In With Google"),
                  Opacity(
                    opacity: 0,
                    child: Image.asset("images/facebook-logo.png"),
                  )
                ]),
            borderRadious: 18,
            fontsize: 15,
            TextColor: Colors.black,
            color: Colors.white,
            onpressed: () {},
          ),
          SizedBox(
            height: 10,
          ),
          buildRaisedButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset("images/facebook-logo.png"),
                Text(
                  "Sign In With FaceBook",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Opacity(
                  opacity: 0,
                  child: Image.asset("images/facebook-logo.png"),
                )
              ],
            ),
            borderRadious: 18,
            fontsize: 15,
            TextColor: Colors.white,
            color: Color(0xFF334D92),
            onpressed: () {},
          ),
          SizedBox(
            height: 10,
          ),
          buildRaisedButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset("images/google-logo.png"),
                Text(
                  "Sign In With Email",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Opacity(
                  opacity: 0,
                  child: Image.asset("images/google-logo.png"),
                )
              ],
            ),
            borderRadious: 18,
            fontsize: 15,
            TextColor: Colors.white,
            color: Colors.teal[700],
            onpressed: () => Navigator.of(context).push(
              MaterialPageRoute<void>(
                fullscreenDialog: true,
                builder: (context) => EmailSignInPage(),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "OR",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          buildRaisedButton(
            child: Text(
              "Register",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            borderRadious: 18,
            fontsize: 15,
            TextColor: Colors.black,
            color: Colors.lime[700],
            onpressed: () => Navigator.of(context).push(
              MaterialPageRoute<void>(
                fullscreenDialog: true,
                builder: (context) => RegistrationLangingPage(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
