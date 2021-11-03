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
  final _formKey = GlobalKey<FormState>();
  String name = '';
  bool changedButton = false;
  moveTo(BuildContext context) async {
    // if (_formKey.currentState!=null && _formKey.currentState.) {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changedButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changedButton = false;
      });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Login'),
      ),
      body: Material(
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
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                        decoration: InputDecoration(
                            hintText: "Enter Username", labelText: "UserName"),
                        validator: (value) {
                          if (value != null && value.isEmpty) {
                            return "username Cant be empty";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value != null && value.isEmpty) {
                            return "Password Cant be empty";
                          } else if (value != null && value.length < 8) {
                            return "Password should have more than 8 characters";
                          }
                          return null;
                        },
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
                      Material(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changedButton ? 60 : 10),
                        child: InkWell(
                          onTap: () => moveTo(context),
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
                            // decoration: BoxDecoration(
                            //     color: Colors.deepviolet,
                            //     shape: (changedButton)
                            //         ? BoxShape.circle
                            //         : BoxShape.rectangle),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
