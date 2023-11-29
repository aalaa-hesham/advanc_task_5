import 'package:advanc_task_5/utils/colors.utils.dart';
import 'package:advanc_task_5/utils/theme.utils.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtil.badgeColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 100,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff515C6F)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      "Log in",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff515C6F)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      "Forget password",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff515C6F)),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    label: Text(
                      "EMAIL",
                      style: TextStyle(fontSize: 12, color: Color(0xff727C8E)),
                    ),
                    hintText: "aalaahesha123@mail.com",
                    icon: Icon(Icons.mail, color: ColorsUtil.iconColor),
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      gapPadding: 1.0,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    label: Text(
                      "USERNAME",
                      style: TextStyle(fontSize: 12, color: Color(0xff727C8E)),
                    ),
                    hintText: "aalaahesham 789",
                    icon: Icon(Icons.person_2_outlined,
                        color: ColorsUtil.iconColor),
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      gapPadding: 1.0,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.white,
                    width: 400,
                    height: 400,
                    child: Row(
                      children: [
                        TextField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            label: Text(
                              "Password",
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xff727C8E)),
                            ),
                            hintText: "****************",
                            icon: Icon(Icons.padding_outlined,
                                color: ColorsUtil.iconColor),
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              gapPadding: 1.0,
                            ),
                          ),
                        ),
                        ElevatedButton(onPressed: () {}, child: Text("sign up"))
                      ],
                    ),
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
