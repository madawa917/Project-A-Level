import 'package:flutter/material.dart';
import 'package:note_app/Screens/et_topics.dart';
import 'package:note_app/Screens/home.dart';
import 'package:note_app/Screens/it_topics.dart';
import 'package:note_app/Screens/sft_topics.dart';
import 'package:note_app/screens/home_screen.dart';
import 'package:provider/provider.dart';

import 'package:note_app/Screens/app.dart';
import 'package:note_app/Screens/login.dart';
import 'package:note_app/Screens/sign_up.dart';
import 'models/authentication.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Authentication(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Color(0xFF1a237e),
          accentColor: Color(0xFFFEF9EB),
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => App(),
          '/signup': (context) => Signup(),
          '/signin': (context) => Login(),
          '/home': (context) => Home(),
          '/ict': (context) => ItList(),
          '/et': (context) => EtList(),
          '/sft': (context) => SftList(),
          '/message': (context) => HomeScreen(),
        },
      ),
    );
  }
}
