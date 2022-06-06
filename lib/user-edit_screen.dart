import 'package:flutter/material.dart';
import 'package:login_ui/dashboard.dart';
import 'login_screen.dart';

class UserEdit extends StatelessWidget {
  const UserEdit({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit User'),
        backgroundColor: const Color.fromARGB(255, 187, 134, 252),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Edit User',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              child: const Text('Back to Dashboard'),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const Dashboard(title: 'Back to Dashbord'),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Log out'),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(title: 'Login'),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
