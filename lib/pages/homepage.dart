import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

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
      drawer: MyDrawer(),
    );
  }
}
