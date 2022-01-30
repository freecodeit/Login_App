import 'dart:ffi';

import 'package:flutter/material.dart';

import 'login.dart';

class HomeScreen extends StatelessWidget {
  final String username;
  HomeScreen(this.username);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Center(child: Text("Welcome" + username)),
          SizedBox(
            height: 300,
          ),
          Center(
            child: Text(
              "Made By Shishir Gajurel",
              style: fortext,
            ),
          ),
        ],
      ),
    );
  }
}
