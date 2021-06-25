import 'package:flutter/material.dart';

import 'EmailSignInBody.dart';

class EmailSignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Sign in"),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Card(
          child: SignInbody(),
        ),
      ),
    );
  }
}
