import 'package:fitness_mobile_login_page/home_page.dart';
import 'package:fitness_mobile_login_page/login_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});
  final String titletext = 'HERO FİTNESS';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Text(
                  titletext,
                  style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(30),
                child: PersonalizedText(
                  text: 'Shape Your Body',
                  fontweight: FontWeight.w900,
                  color: Colors.white70,
                  fontsize: 50,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child:
                    TextFields(hintText: 'Full Name', prefixIcon: Icon(Icons.person), keyboardType: TextInputType.name),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: TextFields(
                    hintText: 'Enter your Email',
                    prefixIcon: Icon(Icons.mail),
                    keyboardType: TextInputType.emailAddress),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: TextFields(
                    hintText: '*****************',
                    prefixIcon: Icon(Icons.lock),
                    keyboardType: TextInputType.visiblePassword),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButtons(
                  textName: 'Sign Up',
                  bgColor: Colors.red[300],
                  onpressed: () {},
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Already have accounts',
                  style: TextStyle(
                    color: Colors.red[300],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
