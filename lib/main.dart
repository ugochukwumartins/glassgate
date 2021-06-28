import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'HomePage/Homepage.dart';
import 'package:provider/provider.dart';

import 'Serviceses/Auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider<AuthBase>(
      create: (context) => Auth(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Biawazo',
        theme: ThemeData(),
        home: MyHomePage(),
      ),
    );
  }
}
