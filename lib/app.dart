import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/scrollable_list_with_app_bar.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScrollableListWithAppBar(),
    );
  }
}