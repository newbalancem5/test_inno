import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_application/Scene/SecondTest/secondpagedart.dart';
import 'package:test_application/decoration/main_decoration.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: displayWidth(context),
      height: displayHeight(context),
      color: Colors.green,
      child: Center(
        child: TextButton(
          child: const Text(
            "На экран 1",
            style: FontStyleText.text,
          ),
          onPressed: () {
            Navigator.of(context).push(
              CupertinoPageRoute(
                builder: (context) => const SecondPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}
