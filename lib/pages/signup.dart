import 'package:flutter/material.dart';
import 'package:advanc_task_5/utils/colors.utils.dart';
import 'package:advanc_task_5/utils/theme.utils.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

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
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorsUtil.badgeColor,
      body: Stack(
        children: [
          Container(
            height: 100,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Sign Up",
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff515C6F),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 192, 190, 190),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Forget password",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 192, 190, 190),
                    ),
                  ),
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(20),
                      height: 150,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 251, 253),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          TextField(
                            controller: emailController,
                            decoration: InputDecoration(
                                labelText: "EMAIL",
                                labelStyle: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff727C8E),
                                ),
                                hintText: "aalaahesha123@mail.com",
                                icon: Icon(Icons.mail_outline,
                                    color: Color(0xFF3F3D56)),
                                border: InputBorder.none),
                          ),
                          SizedBox(height: 12.0),
                          TextField(
                            decoration: InputDecoration(
                                labelText: "USERNAME",
                                labelStyle: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff727C8E),
                                ),
                                hintText: "aalaahesham 789",
                                icon: Icon(Icons.person_outline,
                                    color: ColorsUtil.iconColor),
                                border: InputBorder.none),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 243, 72, 33),
                          borderRadius: BorderRadius.circular(20)),
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigator.push(
                          //     context, MaterialPageRoute(builder: (_) => ));
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
