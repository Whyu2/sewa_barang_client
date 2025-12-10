// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/home/data/data_sources/agent_data_sources.dart' as _i3;
import '../../features/home/data/data_sources/data_sources.dart' as _i5;
import '../../features/home/data/repositories/agent_repository.dart' as _i4;

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
    gh.singleton<_i3.AgentDataSource>(
      () => _i3.AgentDataSourceImpl(),
      signalsReady: true,
    );
    gh.factory<_i4.AgentRepository>(
        () => _i4.AgentRepository(gh<_i5.AgentDataSource>()));
    return this;
  }
}
