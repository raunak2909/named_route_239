import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  Map<String, dynamic>? args;

  @override
  Widget build(BuildContext context) {

    args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;


    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Profile: ${args != null ? args!['name'] : "Guest"}'),
            Text('Profile: ${args != null ? args!['age'].toString() : "NA"}'),
          ],
        ),
      ),
    );
  }
}
