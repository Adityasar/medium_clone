import 'package:flutter/material.dart';
import 'package:medium_clone/main/signin.dart';

class SignInWindow extends StatelessWidget {
  const SignInWindow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Image(
                  image: AssetImage('images/logo.png'),
                  width: 70,
                  height: 90,
                ),
                Text(
                  'Medium',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontFamily: 'NotoSanSerif',
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
            const Spacer(),
            const Text(
              'Join Medium.',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'NotoSanSerif',
                fontWeight: FontWeight.bold,
                fontSize: 43,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(20)),
                    child: TextButton.icon(
                      icon: Image.asset(
                        'images/google.jpg',
                      ),
                      label: const Text(
                        'Sign in with Google',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      onPressed: () {
                        SignIn().gLogin();
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Spacer(),
            const Spacer(),
            const Spacer(),
            const Spacer(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
