import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/core/failures/main_failure.dart';
import 'package:netflix_clone/domain/home/model/home_resp.dart';

abstract class HomeService {
  Future<Either<MainFailure, HomeResp>> getHomeMovieTrendingData();
  Future<Either<MainFailure, HomeResp>> getHomeTvTrendingData();
}
