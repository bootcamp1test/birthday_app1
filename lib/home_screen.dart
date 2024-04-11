// import 'package:birthday_app/custom_button.dart';
import 'package:birthday_app/days_left.dart';
import 'package:flutter/material.dart';
import 'package:birthday_app/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 183, 3, 1),
      body: Column(
        children: [
          const SizedBox(
            height: 150,
          ),
          Image.asset(
            "assets/image.png",
            width: double.infinity,
          ),
          const Text(
            "My Birthday",
            style: TextStyle(
              fontSize: 55,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Text(
            "Know the days left in your birthday",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 80,
          ),
         

          CustomButton(
            title: "Start Now",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DaysLeftScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
