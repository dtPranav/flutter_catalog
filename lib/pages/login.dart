import 'dart:html';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
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
            "Welcome",
            style: TextStyle(fontSize: 24),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Username", labelText: "UserName"),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Password", labelText: "password"),
                  obscureText: true,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      print("Hello day 4");
                    },
                    style: ButtonStyle(),
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
