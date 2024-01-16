import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: ()async{
           final prefs = await SharedPreferences.getInstance();
           prefs.setBool("onboarding", false);
          },
          child: const Text("Enable onboarding"),
        ),
      ),
    );
  }
}
