// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:test_application/Scene/center_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Material(
        child: Center(
          child: CenterContainer(),
        ),
      ),
    );
  }
}
