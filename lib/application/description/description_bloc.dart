import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/description/description_service.dart';

part 'description_bloc.freezed.dart';
part 'description_event.dart';
part 'description_state.dart';

@injectable
class DescriptionBloc extends Bloc<DescriptionEvent, DescriptionState> {
  final DescriptionService _descriptionService;
  DescriptionBloc(this._descriptionService)
      : super(DescriptionState.initial()) {
    on<LoadDataMovie>((event, emit) async {
      emit(
        const DescriptionState(
          title: "",
          posterPath: "",
          overview: "",
          status: "",
          releaseDate: "",
          voteAverage: 0,
          isLoading: true,
          isError: false,
        ),
      );
      final movies =
          await _descriptionService.getMovieDescription(id: event.id);
      final result = movies.fold(
        (l) => const DescriptionState(
          title: "",
          posterPath: "",
          overview: "",
          status: "",
          releaseDate: "",
          voteAverage: 0,
          isLoading: true,
          isError: false,
        ),
        (r) => DescriptionState(
          title: r.title!,
          posterPath: r.posterPath!,
          overview: r.overview!,
          status: r.status!,
          releaseDate: r.releaseDate!,
          voteAverage: r.voteAverage!,
          isLoading: false,
          isError: false,
        ),
      );
      emit(result);
    });
  }
}
