import 'package:fitness_mobile_login_page/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final String title = 'HERO FİTNESS';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 60),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: PersonalizedText(
                text: 'Make Yourself Fit',
                fontweight: FontWeight.w800,
                color: Colors.white60,
                fontsize: 50,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFields(
                keyboardType: TextInputType.emailAddress,
                hintText: 'Enter your Email',
                prefixIcon: Icon(Icons.mail),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFields(
                keyboardType: TextInputType.visiblePassword,
                hintText: '*****************',
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: 200,
              child: ElevatedButtons(
                textName: 'Login',
                bgColor: Colors.purple,
                onpressed: () {},
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Forget Password?'),
            ),
          ],
        ),
      ),
    );
  }
}

class TextFields extends StatelessWidget {
  const TextFields({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    required this.keyboardType,
  });
  final hintText;
  final prefixIcon;
  final keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: 20,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(),
        hintText: hintText,
        fillColor: Colors.white,
        filled: true,
      ),
    );
  }
}
