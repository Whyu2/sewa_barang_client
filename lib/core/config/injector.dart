import 'package:get_it/get_it.dart';
import 'package:sewa_barang_client/core/config/injector.config.dart';
import 'package:injectable/injectable.dart';

const production = Environment('production');
const development = Environment('development');
final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
void configureDependencies({Environment environment = development}) {
  getIt.init(environment: environment.name);
}
