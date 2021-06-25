import 'package:biawazo/LandingPage/SignUpPage.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Search by Product",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 1,
                ),
                FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Search by Service",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 120,
          ),
          SignUp(),
        ],
      ),
    );
  }
}
