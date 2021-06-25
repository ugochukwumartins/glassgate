import 'package:biawazo/LandingPage/SignUpbutton.dart';
import 'package:flutter/material.dart';

import 'UserRegPage.dart';
import 'VendorRegPage.dart';

class RegistrationLangingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Page"),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 5),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                child: UserRegistration(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            buildRaisedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.account_box_outlined,
                    size: 40,
                  ),
                  Text(
                    "Register As User",
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
              onpressed: () {},
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "OR",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            buildRaisedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.wc_sharp,
                    color: Colors.white,
                    size: 40,
                  ),
                  Text(
                    "Register As Vendor",
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
              color: Colors.blue,
              onpressed: () => Navigator.of(context).push(
                MaterialPageRoute<void>(
                  fullscreenDialog: true,
                  builder: (context) => VendorRegistrationPage(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
