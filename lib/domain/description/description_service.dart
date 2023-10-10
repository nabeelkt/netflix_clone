import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/core/failures/main_failure.dart';
import 'package:netflix_clone/domain/description/model/description_resp/description_resp.dart';

abstract class DescriptionService {
  Future<Either<MainFailure, DescriptionResp>> getMovieDescription(
      {required int id});
}
