import 'package:flutter/material.dart';
import 'package:loginapp/Screen/homepage.dart';

TextStyle fortext = TextStyle(fontSize: 25, color: Colors.black);

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String usernameinput;
  late String passwordinput;
  @override
  Widget build(BuildContext context) {
    final username = TextField(
      onChanged: (val) {
        setState(() {
          usernameinput = val;
        });
      },
      style: fortext,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10),
        hintText: "Username",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );
    final password = TextField(
      onChanged: (val) {
        setState(() {
          passwordinput = val;
        });
      },
      obscureText: true,
      style: fortext,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10),
        hintText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );
    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(32.0),
      color: Colors.blue,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        onPressed: () {
          if (usernameinput == "shishir" && passwordinput == "pass") {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomeScreen(usernameinput)));
          } else {
            print("Login Failed");
          }
        },
        child: Text(
          "Login",
          style: fortext,
        ),
      ),
    );
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
              padding: EdgeInsets.all(20),
              child: ListView(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.supervised_user_circle_outlined,
                        size: 100,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      username,
                      SizedBox(
                        height: 10,
                      ),
                      password,
                      SizedBox(
                        height: 20,
                      ),
                      loginButton,
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Made By Shishir Gajurel",
                        style: fortext,
                      ),
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
