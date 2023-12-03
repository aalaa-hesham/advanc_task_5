import 'package:advanc_task_5/utils/colors.utils.dart';
import 'package:flutter/material.dart';

class Forgetpass extends StatefulWidget {
  const Forgetpass({super.key});

  @override
  State<Forgetpass> createState() => _ForgetpassState();
}

class _ForgetpassState extends State<Forgetpass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtil.badgeColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Forget password",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 82, 70, 70),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  "Enter the email address you used to create your account and we will email you a link to reset your password",
                  style: TextStyle(fontSize: 15, color: Color(0xff515C6F)),
                ),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Container(
              color: const Color.fromARGB(255, 255, 246, 219),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "EMAIL",
                    labelStyle: TextStyle(
                      fontSize: 12,
                      color: Color(0xff727C8E),
                    ),
                    icon: Icon(Icons.mail_outline, color: Color(0xFF3F3D56)),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color.fromARGB(255, 235, 215, 209),
                    Color.fromARGB(255, 212, 215, 218),
                  ],
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 198, 189, 189),
                padding: const EdgeInsets.all(16.0),
                textStyle: const TextStyle(fontSize: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              onPressed: () {},
              child: const Text('SEND EMAIL'),
            ),
          ],
        ),
      ),
    );
  }
}
