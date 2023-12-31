import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/downloads/downloads_service.dart';

import '../../domain/core/failures/main_failure.dart';
import '../../domain/downloads/models/downloads.dart';

part 'downloads_bloc.freezed.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final DownloadService _downloadsRepo;
  DownloadsBloc(this._downloadsRepo) : super(DownloadsState.initial()) {
    on<_GetDownloadImages>(
      (event, emit) async {
        emit(
          state.copyWith(
            isLoading: true,
            downloadsFailureOrSuccessOption: none(),
          ),
        );
        final Either<MainFailure, List<Downloads>> downloadsOption =
            await _downloadsRepo.getDownloadsImages();

        emit(
          downloadsOption.fold(
            (failure) => state.copyWith(
              isLoading: false,
              downloadsFailureOrSuccessOption: some(Left(failure)),
            ),
            (success) => state.copyWith(
              isLoading: false,
              downloads: success,
              downloadsFailureOrSuccessOption: Some(Right(success)),
            ),
          ),
        );
      },
    );
  }
}
