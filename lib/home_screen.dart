import 'package:flutter/material.dart';
import 'package:new_login/detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 115, top: 100),
            child: Text(
              "Notifications",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
            ),
          ),
          for (int i = 0; i < 3; i++)
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 30, left: 30),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 124, 161, 213)),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(),
                      ),
                    );
                  },
                  child: ListTile(
                    title: Text("Name"),
                    subtitle: Text("Descripsion"),
                    leading: Icon(
                      Icons.account_circle,
                      size: 45,
                    ),
                    trailing: Icon(Icons.dehaze_outlined),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
