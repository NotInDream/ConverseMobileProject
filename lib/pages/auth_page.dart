import 'package:converse_project/pages/home_page.dart';
import 'package:converse_project/pages/intro_page.dart';
import 'package:converse_project/pages/login_or_register.dart';
import 'package:converse_project/pages/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            // user is logged in
            if (snapshot.hasData) {
              return HomePage();
            }
            // user not login
            else {
              return LoginOrRegister();
            }
          }),
    );
  }
}
