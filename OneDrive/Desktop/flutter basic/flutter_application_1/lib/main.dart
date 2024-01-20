import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase_options.dart';
import 'package:flutter_application_1/home_screen.dart';
import 'package:flutter_application_1/login_page.dart';
import 'package:flutter_application_1/sign_upscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: SignU(),
      routes: {
        "/home": (context) => HomeScreen(),
        "/login": (context) => LoginPage(),
        // "/SignUp":(context)=>SignU(),
      },
    );
  }
}
