import 'package:flutter/material.dart';
import 'package:whats_app/screens/login_page/login_page.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Image.asset('onboard_screen/onboard.jpg')),
          Expanded(
            child: Column(
              children: [
                const Text(
                  'Welcome To WhatsApp',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Read our ',
                        ),
                        TextSpan(
                            text: 'privacy and policy',
                            style: TextStyle(color: Colors.blue)),
                        TextSpan(
                            text: 'Tap "Agree and Continue" to accept the'),
                        TextSpan(
                            text: 'Terms of Services',
                            style: TextStyle(color: Colors.blue)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 70, vertical: 20),
                      backgroundColor: const Color.fromARGB(255, 3, 117, 64),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                  child: const Text('AGREE AND CONTINUE'),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(20),
                  focusColor: const Color.fromARGB(255, 14, 10, 1),
                  highlightColor: const Color.fromARGB(255, 14, 10, 1),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.language),
                        SizedBox(
                          width: 5,
                        ),
                        Text('English'),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.keyboard_arrow_down)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
