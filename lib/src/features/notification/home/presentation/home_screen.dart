import 'package:flutter/material.dart';
import 'package:new_login/src/routes/app_route.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            for (int i = 0; i < 10; i++)
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 10, left: 10),
                child: GestureDetector(
                  onTap: () {
                    context.pushNamed(Routes.detail);
                  },
                  child: ListTile(
                    title: Text("Siswa Name"),
                    subtitle: Text("tanggal hari ini"),
                    leading: Icon(
                      Icons.account_circle,
                      size: 45,
                    ),
                    trailing: Icon(Icons.dehaze_outlined),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
