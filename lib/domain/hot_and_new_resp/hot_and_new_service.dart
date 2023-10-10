import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/core/failures/main_failure.dart';
import 'package:netflix_clone/domain/hot_and_new_resp/model/hot_and_new_resp.dart';

abstract class HotAndNewService {
  Future<Either<MainFailure, HotAndNewDataResp>> getHotAndNewMovieData();
  Future<Either<MainFailure, HotAndNewDataResp>> getHotAndNewTvData();
}
