// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:test_application/decoration/size.dart';

class AnimationTask extends StatefulWidget {
  const AnimationTask({Key? key}) : super(key: key);

  @override
  _AnimationTaskState createState() => _AnimationTaskState();
}

class _AnimationTaskState extends State<AnimationTask> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: displayWidth(context),
      height: displayHeight(context),
      child: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              selected = !selected;
            });
          },
          child: Container(
            color: Colors.red,
            child: AnimatedContainer(
              width: selected ? 150 : 300.0,
              height: selected ? 150 : 300.0,
              curve: Curves.fastOutSlowIn,
              duration: const Duration(seconds: 1),
            ),
          ),
        ),
      ),
    );
  }
}
