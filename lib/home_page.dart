import 'package:fitness_mobile_login_page/login_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final String title = 'HERO FİTNESS';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 50),
            child: PersonalizedText(
              text: 'Personalized Training',
              color: Colors.white60,
              fontweight: FontWeight.w700,
              fontsize: 50,
            ),
          ),
          const SizedBox(height: 70),
          ElevatedButtons(
            textName: 'Login',
            bgColor: Colors.purple[400],
            onpressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButtons(
            textName: 'Sign Up',
            bgColor: Colors.red[400],
            onpressed: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButtons(
            textName: 'Connect With Others',
            bgColor: Colors.blue[800],
            onpressed: () {},
          ),
        ],
      ),
    );
  }

  void navigatorLogin(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
  }
}

class PersonalizedText extends StatelessWidget {
  const PersonalizedText({
    super.key,
    required this.text,
    required this.fontweight,
    required this.color,
    required this.fontsize,
  });
  final String text;
  final fontweight;
  final color;
  final double fontsize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontweight,
        color: color,
        fontSize: fontsize,
      ),
    );
  }
}

class ElevatedButtons extends StatelessWidget {
  const ElevatedButtons({
    super.key,
    required this.textName,
    required this.bgColor,
    required this.onpressed,
  });
  final String textName;
  final bgColor;
  final onpressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 60,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
          ),
        ),
        child: Text(
          textName,
          style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
