// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/api_service.dart' as _i8;
import '../data/movies_repository.dart' as _i7;
import '../presentation/home/home_vm.dart' as _i6;
import '../router/route_parser.dart' as _i4;
import '../router/router_delegate.dart' as _i3;
import '../router/router_vm.dart' as _i5;
import 'modules.dart' as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final networkModule = _$NetworkModule();
  gh.factory<_i3.AppRouterDelegate>(() => _i3.AppRouterDelegate());
  gh.factory<_i4.AppRoutingParser>(() => _i4.AppRoutingParser());
  gh.factory<_i5.RouteHandler>(() => _i5.RouteHandler());
  gh.factory<_i6.HomeViewModel>(
      () => _i6.HomeViewModel(get<_i7.MoviesRepository>()));
  gh.singleton<_i8.ApiService>(networkModule.getApi());
  gh.singleton<_i7.MoviesRepository>(
      _i7.MoviesRepository(get<_i8.ApiService>()));
  gh.singleton<_i5.RouterVM>(_i5.RouterVM(get<_i5.RouteHandler>()));
  return get;
}

class _$NetworkModule extends _i9.NetworkModule {}
