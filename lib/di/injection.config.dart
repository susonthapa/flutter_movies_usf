// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/api_service.dart' as _i5;
import '../data/movies_repository.dart' as _i4;
import '../presentation/home/home_vm.dart' as _i3;
import 'modules.dart' as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final networkModule = _$NetworkModule();
  gh.factory<_i3.HomeViewModel>(
      () => _i3.HomeViewModel(get<_i4.MoviesRepository>()));
  gh.singleton<_i5.ApiService>(networkModule.getApi());
  gh.singleton<_i4.MoviesRepository>(
      _i4.MoviesRepository(get<_i5.ApiService>()));
  return get;
}

class _$NetworkModule extends _i6.NetworkModule {}
