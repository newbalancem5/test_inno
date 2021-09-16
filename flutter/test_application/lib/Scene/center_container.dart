import 'package:flutter/material.dart';
import 'package:test_application/Scene/task_animation.dart';
import 'package:test_application/Scene/task_list.dart';
import 'package:test_application/Scene/task_routing.dart';
import 'package:test_application/const/app_string.dart';
import 'package:test_application/decoration/main_decoration.dart';

class CenterContainer extends StatefulWidget {
  const CenterContainer({Key? key}) : super(key: key);

  @override
  _CenterContainerState createState() => _CenterContainerState();
}

class _CenterContainerState extends State<CenterContainer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            child: ElevatedButton(
              child: Text(
                first_task,
                style: FontStyleText.text,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TaskList()),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SizedBox(
              child: ElevatedButton(
                child: Text(
                  second_task,
                  style: FontStyleText.text,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TestRouting()),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: SizedBox(
              child: ElevatedButton(
                child: Text(
                  third_task,
                  style: FontStyleText.text,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimationTask()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
