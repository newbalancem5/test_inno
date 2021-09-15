import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_application/Scene/SecondTest/firstpage.dart';
import 'package:test_application/decoration/main_decoration.dart';
import 'package:test_application/homepage.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: displayWidth(context),
      height: displayHeight(context),
      color: Colors.blue,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              child: const Text(
                "На экран 2",
                style: FontStyleText.text,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    builder: (context) => const FirstPage(),
                  ),
                );
              },
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                child: Text(
                  "на главную",
                  style: FontStyleText.info,
                ))
          ],
        ),
      ),
    );
  }
}
