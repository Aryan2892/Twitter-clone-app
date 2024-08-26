import 'package:flutter/material.dart';
import 'package:twitter_clone/components/custom_btn.dart';
import 'package:twitter_clone/components/custom_textfield.dart';

/*
Register PAGE

A NEW USER CAN FILL THE FORM AND CREATE THEIR ACCOUNT

- NAME
- EMAIL
- PASSWORD
- CNF PASSWORD

IF REGISTER SUCCESSFUL -> USER WILL BE DIRECTED TO HOMEPAGE
IF USER HAVE ACCOUNT -> REDIRECT TO LOGIN PAGE
*/

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    //text controllers
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController cnfpasswordController = TextEditingController();

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
                  "Let's create an account for you",
                  style: TextStyle(
                    color: colorScheme.primary,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),

                //email txtfield
                CustomTextField(
                    controller: nameController,
                    hintText: "Enter your name",
                    obscureText: false),

                const SizedBox(
                  height: 10,
                ),
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
                CustomTextField(
                    controller: cnfpasswordController,
                    hintText: "Confirm your password",
                    obscureText: true),

                const SizedBox(
                  height: 20,
                ),

                
                //sign in btn
                CustomButton(
                  onTap: () {},
                  text: "Register",
                ),

                const SizedBox(height: 50,),

                //already a member? login now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already a member?", style: TextStyle(color: colorScheme.primary),),
                    const SizedBox(width: 5,),
                    GestureDetector(
                      onTap: (){},
                      child: Text("Login now", style: TextStyle(
                        color: colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
