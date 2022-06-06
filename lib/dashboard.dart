import 'package:flutter/material.dart';
import 'package:login_ui/home_page.dart';
import 'package:login_ui/user-edit_screen.dart';
import 'home_page.dart';
import 'user-edit_screen.dart';
import 'login_screen.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: const Color.fromARGB(255, 187, 134, 252),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Dashboard',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              child: const Text('Home Page'),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(title: 'Home Page'),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Edit User'),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UserEdit(title: 'EditUser'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
