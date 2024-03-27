import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/people.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Back button
        Positioned(
          top: 16,
          left: 0,
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Get.back(); // Use Get.back() to navigate back
            },
          ),
        ),
      ],
    );
  }
}
