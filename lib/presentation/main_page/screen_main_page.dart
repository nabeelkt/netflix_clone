import 'package:flutter/material.dart';

import '../downloads/screen_downloads.dart';
import '../fast_laughs/screen_fast_laugh.dart';
import '../home/screen_home.dart';
import '../new_and_hot/screen_new_and_hot.dart';
import '../search/screen_search.dart';
import 'widgets/bottom_nav.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});
  final pages = [
    ScreenHome(key: const Key('home screen')),
    const ScreenNewAndHot(),
    const ScreenFastLaugh(),
    ScreenSearch(),
    ScreenDownloads(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
