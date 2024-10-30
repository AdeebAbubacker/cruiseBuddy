import 'package:cruise_buddy/core/constants/styles/text_styles.dart';
import 'package:cruise_buddy/core/routes/app_routes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 70),
              Center(
                child: Image.asset(
                  'assets/email_logo.png',
                  width: 80,
                  height: 80,
                ),
              ),
              const SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "welcome ",
                      style: TextStyles.ubuntu32blue24w2700,
                    ),
                    TextSpan(
                      text: "back!",
                      style: TextStyles.ubuntu32black24w2700,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Text(
                "Your gateway to seamless boat rentals and memorable experiences on the water.",
                style: TextStyles.ubuntu16black55w400,
              ),
              const SizedBox(height: 12),
              Text(
                "Email Address",
                style: TextStyles.ubuntu16black23w500,
              ),
              const SizedBox(height: 12),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32))),
              ),
              const SizedBox(height: 18),
              Row(
                children: [
                  Text(
                    "Password",
                    style: TextStyles.ubuntu16black23w500,
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {
                        AppRoutes.navigateToForgotPasswordScreen(context);
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyles.ubuntu12blue23w500,
                      ))
                ],
              ),
              const SizedBox(height: 12),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32))),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (_) {}),
                  Text("Keep me signed in",
                      style: TextStyles.ubuntu16black23w300),
                ],
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                      const Color(0xFF1F8386),
                    ),
                  ),
                  onPressed: () {},
                  child: Text("Login", style: TextStyles.ubuntu16whiteFFw500),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.grey,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text("or sign in with"),
                  ),
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Center(
                child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 201, 201, 201)),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/Google.png"),
                    )),
              ),
              const SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Don’t have an account?",
                      style: TextStyles.ubuntu16black23w400,
                    ),
                    TextSpan(
                      text: " Create an account",
                      style: TextStyles.ubuntu16blue86w400,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40)
            ],
          ),
        ),
      ),
    );
  }
}
