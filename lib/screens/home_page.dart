import 'package:flutter/material.dart';
import 'package:named_route_239/app_routes/routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var mController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade200,
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: mController,
            ),
            SizedBox(
              height: 11,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.PROFILE_PAGE,
                      arguments: {
                        "name": mController.text,
                        "age": mController.text,
                      });
                },
                child: Text('My Profile'))
          ],
        ),
      ),
    );
  }
}
