import 'package:converse_project/components/my_button.dart';
import 'package:converse_project/components/user_textfield.dart';
import 'package:converse_project/pages/intro_page.dart';
import 'package:converse_project/pages/register_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            //logo
            Image.asset(
              "lib/images/Converse.png",
              height: 120,
            ),
            const SizedBox(
              height: 50,
            ),

            //username textfield
            UserTextField(
              controller: usernameController,
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
            SizedBox(height: 40),
            //login
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  btnText: "Register",
                  btnTextColors: Colors.black,
                  btnColors: Colors.white,
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterPage(),
                    ),
                  ),
                ),
                Text(
                  "or",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                //register
                MyButton(
                  btnText: "Sign In",
                  btnTextColors: Colors.white,
                  btnColors: Colors.black,
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => IntroPage(),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
