import 'package:flutter/material.dart';
import './login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_login/Medicine1Container.dart';
const kBorderShape =RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)));
var medicineContainerCounter = 2;
var kPrimaryTeal = Colors.teal[400];
var kSecondaryGreen = Color(0xFF82DBD8);
void main() => runApp(LoginUI());
class LoginUI extends StatelessWidget {
  const LoginUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Login UI",
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Login Screen",
          ),
        ),
        body: const LoginScreen(),
      ),
    );
  }
}
