import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/main_page/screen_main_page.dart';

import '../../../core/colors/colors.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.all(25),
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 216, 14, 0),
          borderRadius: BorderRadius.circular(5)),
      child: TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => ScreenMainPage(),
            ),
          );
        },
        child: const Text(
          "SIGN IN",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: kWhiteColor, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
