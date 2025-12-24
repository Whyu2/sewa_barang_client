// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/auth/blocs/auth/auth_cubit.dart' as _i10;
import '../../features/auth/blocs/form_login/form_login_bloc.dart' as _i3;
import '../data_sources/auth_data_sources.dart' as _i7;
import '../data_sources/transaction_data_sources.dart' as _i6;
import '../network/dio_client.dart' as _i4;
import '../repositories/auth_repository.dart' as _i8;
import '../repositories/transaction_repository.dart' as _i9;
import '../storage/scure_storage_service.dart' as _i5;

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
    gh.factory<_i3.FormLoginBloc>(() => _i3.FormLoginBloc());
    gh.singleton<_i4.DioClient>(() => _i4.DioClient());
    gh.singleton<_i5.SecureStorageService>(() => _i5.SecureStorageService());
    gh.singleton<_i6.TransactionDataSource>(
        () => _i6.TransactionDataSourceImpl(gh<_i4.DioClient>()));
    gh.singleton<_i7.AuthDataSource>(
        () => _i7.AuthDataSourceImpl(gh<_i4.DioClient>()));
    gh.factory<_i8.AuthRepository>(
        () => _i8.AuthRepository(gh<_i7.AuthDataSource>()));
    gh.factory<_i9.TransactionRepository>(
        () => _i9.TransactionRepository(gh<_i6.TransactionDataSource>()));
    gh.singleton<_i10.AuthCubbit>(() => _i10.AuthCubbit(
          gh<_i8.AuthRepository>(),
          gh<_i5.SecureStorageService>(),
        ));
    return this;
  }
}
