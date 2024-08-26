import 'package:flutter/material.dart';
import 'package:twitter_clone/components/custom_textfield.dart';

/*
LOGIN PAGE

EXISTING USER CAN LOGIN ON TO THEIR ACC

- EMAIL
- PASSWORD

IF LOGIN SUCCESSFUL -> USER WILL BE DIRECTED TO HOMEPAGE
IF USER DOESNT HAVE ACCOUNT -> REDIRECT TO REGISTER PAGE
*/

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    //text controllers
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                //logo
                Icon(
                  Icons.lock_rounded,
                  size: 72,
                  color: colorScheme.primary,
                ),
                const SizedBox(
                  height: 50,
                ),
                //welcome back msg
                Text(
                  "Welcome back you have been missed",
                  style: TextStyle(
                    color: colorScheme.primary,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),

                //email txtfield
                CustomTextField(
                    controller: emailController,
                    hintText: "Enter email",
                    obscureText: false),

                const SizedBox(
                  height: 10,
                ),

                //password txtfield
                CustomTextField(
                    controller: passwordController,
                    hintText: "Enter password",
                    obscureText: true),

                const SizedBox(
                  height: 10,
                ),

                //forgot pw
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                        color: colorScheme.primary,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10,), 
                //sign in btn
                

                //not a member? register now
              ],
            ),
          ),
        ),
      ),
    );
  }
}
