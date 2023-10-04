// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/client/pandovie_client.dart' as _i5;
import '../data/repositories/collection_repositories.dart' as _i4;
import '../data/repositories/temporaly_repositories.dart' as _i6;
import '../navigation/auto_route.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    gh.lazySingleton<_i4.CollectionRepository>(
        () => _i4.CollectionRepository()..init());
    gh.factory<_i5.PandovieClient>(() => _i5.PandovieClient());
    gh.lazySingleton<_i6.TemporalyRepository>(
        () => _i6.TemporalyRepository()..init());
    return this;
  }
}
