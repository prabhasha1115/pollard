import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pollard/screens/chat_screen.dart';
import 'package:pollard/screens/login_screen.dart';
import 'package:pollard/screens/registration_screen.dart';
import 'package:pollard/screens/welcome_screen.dart';
import 'screens/input_page.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.purple),
        ), 
        initialRoute: MultiplicationScreen.id,
        routes: {
          MultiplicationScreen.id:(context) => MultiplicationScreen(),
          WelcomeScreen.id:(context) => WelcomeScreen(),
          LoginScreen.id:(context) => LoginScreen(),
          RegistrationScreen.id:(context) => RegistrationScreen(),
          ChatScreen.id:(context) => ChatScreen(),
        },
      );
    
  }
}

