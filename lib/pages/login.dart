import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(20),
        height: 150,
        width: 350,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 251, 253),
            borderRadius: BorderRadius.circular(20)),
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                  hintText: 'Enter valid mail'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter password'),
            ),
          ),
          Container(
  height: 50,
  width: 250,
  decoration: BoxDecoration(
      color: Colors.blue, borderRadius: BorderRadius.circular(20)),
  child: ElevatedButton(
    onPressed: () {
     
    },
    child: Text(
      'Login',
      style: TextStyle(color: Colors.white, fontSize: 25),
    ),
  ),
),
        ]),
      ),
    );
  }
}
