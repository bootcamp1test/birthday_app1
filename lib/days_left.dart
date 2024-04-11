import 'package:birthday_app/custom_button.dart';
import 'package:flutter/material.dart';

class DaysLeftScreen extends StatefulWidget {
  const DaysLeftScreen({super.key});

  @override
  State<DaysLeftScreen> createState() => _DaysLeftScreenState();
}

class _DaysLeftScreenState extends State<DaysLeftScreen> {
  TextEditingController dobController = TextEditingController();

  int daysLeft = 0;

  void caluclateDaysLeft() {
    String inputData = dobController.text;

    if (inputData.length == 8) {
      //

      int date = int.parse(inputData.substring(0, 2));

      int month = int.parse(inputData.substring(2, 4));

      DateTime currentDate = DateTime.now();

      int year = currentDate.year;

      DateTime inputDate = DateTime(year, month, date);

      if (inputDate.isBefore(currentDate)) {
        inputDate = DateTime(year + 1, month, date);
      }

      Duration duration = inputDate.difference(currentDate);

      daysLeft = duration.inDays;

      setState(() {});

      print("Days left in your birthday $daysLeft");

      print(currentDate.toString());
    } else {
      print("Date Formate is incorrect");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 183, 3, 1),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 150,
            width: double.infinity,
          ),
          const Text(
            "Days Left:",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            daysLeft.toString(),
            style: const TextStyle(
              fontSize: 110,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              controller: dobController,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
                hintText: "Enter in format of dd-mm-yyy",
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          CustomButton(
            title: "Calculate",
            onTap: () {
              caluclateDaysLeft();
            },
          ),
        ],
      ),
    );
  }
}
