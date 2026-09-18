// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/auth/blocs/auth/auth_cubit.dart' as _i14;
import '../../features/auth/blocs/form_login/form_login_bloc.dart' as _i3;
import '../../features/rent/blocs/rent_form/rent_form_bloc.dart' as _i4;
import '../../features/transaction/blocs/return_form/return_form_bloc.dart'
    as _i5;
import '../data_sources/auth_data_sources.dart' as _i10;
import '../data_sources/product_data_source.dart' as _i8;
import '../data_sources/transaction_data_sources.dart' as _i9;
import '../network/dio_client.dart' as _i6;
import '../repositories/auth_repository.dart' as _i11;
import '../repositories/product_repository.dart' as _i12;
import '../repositories/transaction_repository.dart' as _i13;
import '../storage/scure_storage_service.dart' as _i7;

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
    gh.factory<_i4.RentFormBloc>(() => _i4.RentFormBloc());
    gh.factory<_i5.ReturnFormBloc>(() => _i5.ReturnFormBloc());
    gh.singleton<_i6.DioClient>(() => _i6.DioClient());
    gh.singleton<_i7.SecureStorageService>(() => _i7.SecureStorageService());
    gh.singleton<_i8.ProductDataSource>(
        () => _i8.ProductDataSourceImpl(gh<_i6.DioClient>()));
    gh.singleton<_i9.TransactionDataSource>(
        () => _i9.TransactionDataSourceImpl(gh<_i6.DioClient>()));
    gh.singleton<_i10.AuthDataSource>(
        () => _i10.AuthDataSourceImpl(gh<_i6.DioClient>()));
    gh.factory<_i11.AuthRepository>(
        () => _i11.AuthRepository(gh<_i10.AuthDataSource>()));
    gh.factory<_i12.ProductRepository>(
        () => _i12.ProductRepository(gh<_i8.ProductDataSource>()));
    gh.factory<_i13.TransactionRepository>(
        () => _i13.TransactionRepository(gh<_i9.TransactionDataSource>()));
    gh.singleton<_i14.AuthCubbit>(() => _i14.AuthCubbit(
          gh<_i11.AuthRepository>(),
          gh<_i7.SecureStorageService>(),
        ));
    return this;
  }
}
