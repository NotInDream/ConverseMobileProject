import 'package:converse_project/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../components/user_textfield.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Container(
              margin: EdgeInsets.all(20),
              child: Image.asset(
                "lib/images/Converse.png",
                height: 140,
              ),
            ),
            const SizedBox(height: 50),

            //username textfield
            UserTextField(
              controller: TextEditingController(),
              hintText: "Username",
              obscureText: false,
            ),
            const SizedBox(height: 10),
            //password textfield
            UserTextField(
              controller: TextEditingController(),
              hintText: "Password",
              obscureText: true,
            ),
            const SizedBox(height: 10),
            UserTextField(
              controller: TextEditingController(),
              hintText: "Re-type Password",
              obscureText: true,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(right: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 13),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
