import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  String name = '';
  bool changedButton = false;
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/img/undraw.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome, $name",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                    decoration: InputDecoration(
                        hintText: "Enter Username", labelText: "UserName"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "password"),
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //   style: TextButton.styleFrom(
                  //     minimumSize: Size(140, 40),
                  //   ),
                  //   child: Text(
                  //     "Login",
                  //     style: TextStyle(color: Colors.black),
                  //   ),
                  // ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changedButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: (changedButton) ? 120 : 140,
                      height: 50,
                      alignment: Alignment.center,
                      child: changedButton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text("Login",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )),
                      decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(10),
                          color: Colors.deepPurple,
                          shape: (changedButton)
                              ? BoxShape.circle
                              : BoxShape.rectangle),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
