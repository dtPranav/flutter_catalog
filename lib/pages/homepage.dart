import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FirstApp'),
      ),
      body: Center(
        child: Text('Welcome to day 2'),
      ),
      drawer: Drawer(),
    );
  }
}
