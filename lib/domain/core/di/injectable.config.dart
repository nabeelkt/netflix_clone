// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/description/description_bloc.dart' as _i13;
import '../../../application/downloads/downloads_bloc.dart' as _i7;
import '../../../application/fast_laugh/fast_laugh_bloc.dart' as _i8;
import '../../../application/home/home_bloc.dart' as _i14;
import '../../../application/hot_and_new/hot_and_new_bloc.dart' as _i15;
import '../../../application/search/search_bloc.dart' as _i16;
import '../../../infrastructure/description/description_impl.dart' as _i4;
import '../../../infrastructure/downloads/downloads_repository.dart' as _i6;
import '../../../infrastructure/hot_and_new/hot_and_new_impl.dart' as _i10;
import '../../../infrastructure/search/search_impl.dart' as _i12;
import '../../description/description_service.dart' as _i3;
import '../../downloads/downloads_service.dart' as _i5;
import '../../hot_and_new_resp/hot_and_new_service.dart' as _i9;
import '../../search/search_service.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.DescriptionService>(() => _i4.DescriptionMovie());
  gh.lazySingleton<_i5.DownloadService>(() => _i6.DownloadsRepository());
  gh.factory<_i7.DownloadsBloc>(
      () => _i7.DownloadsBloc(get<_i5.DownloadService>()));
  gh.factory<_i8.FastLaughBloc>(
      () => _i8.FastLaughBloc(get<_i5.DownloadService>()));
  gh.lazySingleton<_i9.HotAndNewService>(() => _i10.HotAndNewImplementation());
  gh.lazySingleton<_i11.SearchService>(() => _i12.SearchImpl());
  gh.factory<_i13.DescriptionBloc>(
      () => _i13.DescriptionBloc(get<_i3.DescriptionService>()));
  gh.factory<_i14.HomeBloc>(() => _i14.HomeBloc(get<_i9.HotAndNewService>()));
  gh.factory<_i15.HotAndNewBloc>(
      () => _i15.HotAndNewBloc(get<_i9.HotAndNewService>()));
  gh.factory<_i16.SearchBloc>(() => _i16.SearchBloc(
        get<_i11.SearchService>(),
        get<_i5.DownloadService>(),
      ));
  return get;
}
