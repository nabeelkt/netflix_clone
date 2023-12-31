import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/start_page/widget/screen_bottom_section.dart';

import 'screen_app_bar_top.dart';

class ScreenCommon extends StatelessWidget {
  const ScreenCommon({
    Key? key,
    required this.imageAssets,
    required this.title,
  }) : super(key: key);

  final String imageAssets;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const AppBarTop(),
          kHeight20,
          Image.asset(imageAssets),
          BottomSection(title: title)
        ],
      ),
    );
  }
}
