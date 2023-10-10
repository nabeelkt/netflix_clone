import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:netflix_clone/application/description/description_bloc.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';

import 'widget/background_image_widget.dart';
import 'widget/movie_details.dart';
import 'widget/round_text_widget.dart';

final GetIt locator = GetIt.instance();

class ScreenDescription extends StatelessWidget {
  const ScreenDescription({
    Key? key,
    required this.id,
  }) : super(key: key);
  final int id;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<DescriptionBloc>(context).add(LoadDataMovie(id: id));
    });
    return Scaffold(
      body: BlocBuilder<DescriptionBloc, DescriptionState>(
        builder: (context, state) {
          final imageUrl = "$imageAppendUrl${state.posterPath}";
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            );
          } else if (state.isError) {
            return const Center(
              child: Text(
                "Error movie description",
              ),
            );
          }
          return ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BackgroundImage(imageUrl: imageUrl),
                  kHeight20,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        const RoundText(
                          text: "18+",
                        ),
                        kWidth,
                        RoundText(text: state.status),
                        kWidth,
                        RoundText(text: "⭐ ${state.voteAverage}"),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add_circle_outline_sharp,
                              size: 30,
                              color: kWhiteColor,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.telegram_rounded,
                              color: kWhiteColor,
                              size: 30,
                            ))
                      ],
                    ),
                  ),
                  MovieTitleAndOverview(
                    title: state.title,
                    overView: state.overview,
                  )
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
