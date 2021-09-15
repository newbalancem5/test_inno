import 'package:flutter/material.dart';
import 'package:test_application/Scene/SecondTest/firstpage.dart';

class TestRouting extends StatefulWidget {
  const TestRouting({Key? key}) : super(key: key);

  @override
  _TestRoutingState createState() => _TestRoutingState();
}

class _TestRoutingState extends State<TestRouting> {
  @override
  Widget build(BuildContext context) {
    return FirstPage();
  }
}
