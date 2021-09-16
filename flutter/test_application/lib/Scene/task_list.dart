import 'package:flutter/material.dart';
import 'package:test_application/const/app_string.dart';
import 'package:test_application/decoration/main_decoration.dart';
import 'package:test_application/homepage.dart';

class TaskList extends StatefulWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: displayHeight(context),
      width: displayWidth(context),
      child: Column(
        children: [
          SizedBox(
            height: displayHeight(context) * 0.90,
            width: displayWidth(context),
            child: ListView.separated(
              separatorBuilder: (context, index) => const Divider(
                color: Colors.black,
              ),
              itemCount: 10,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "$index",
                  style: FontStyleText.info,
                ),
              ),
            ),
          ),
          SizedBox(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              child: Text(
                home,
                style: FontStyleText.text,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
