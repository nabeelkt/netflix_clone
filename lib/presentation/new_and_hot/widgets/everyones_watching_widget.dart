import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix_clone/presentation/widgets/video_widget.dart';

class EveryOnesWatchingWidget extends StatelessWidget {
  final String posterPath;
  final String movieName;
  final String description;
  const EveryOnesWatchingWidget({
    Key? key,
    required this.posterPath,
    required this.movieName,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kHeight,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              movieName,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          kHeight,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(description,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: const TextStyle(color: kGreyColor, fontSize: 15)),
          ),
          kHeight50,
          VideoWidget(
            imageUrl: posterPath,
          ),
          kHeight20,
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomButtonWidget(
                icon: Icons.share,
                title: "share",
                iconSize: 35,
                textSize: 16,
                letterSpacingtext: 0,
              ),
              kWidth,
              CustomButtonWidget(
                icon: Icons.add,
                title: "My List",
                iconSize: 35,
                textSize: 16,
                letterSpacingtext: 0,
              ),
              kWidth,
              CustomButtonWidget(
                icon: Icons.play_arrow,
                title: "Play",
                iconSize: 35,
                textSize: 16,
                letterSpacingtext: 0,
              ),
              kWidth
            ],
          )
        ],
      ),
    );
  }
}
