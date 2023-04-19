import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:new_login/src/features/notification/home/presentation/home_screen.dart';
import 'package:new_login/src/routes/app_route.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffbce4fa),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/login.jpg",
              scale: 7,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 5, left: 30, right: 30),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  prefixIcon: Icon(Icons.account_circle),
                  hintText: "Enter Username",
                  hintStyle: TextStyle(
                    color: Colors.grey[800],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 30, left: 30, right: 30),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  prefixIcon: Icon(Icons.key),
                  hintText: "Enter Password",
                  hintStyle: TextStyle(
                    color: Colors.grey[800],
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 358,
              child: ElevatedButton(
                onPressed: () {
                  context.pushNamed(Routes.home);
                },
                child: Text(
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
