import 'package:flutter/material.dart';
import 'package:test_application/Scene/SecondTest/firstpage.dart';
import 'package:test_application/Scene/task_animation.dart';
import 'package:test_application/Scene/task_list.dart';
import 'package:test_application/Scene/task_routing.dart';

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
              child: const Text(
                'Первое Задание',
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
                child: const Text(
                  'Второе Задание',
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
                child: const Text(
                  'Третье Задание',
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
