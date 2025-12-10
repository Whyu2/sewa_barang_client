import 'package:valoku_app/core/config/flavors.dart';
import 'package:valoku_app/main.dart';

Future<void> main() async {
  FlavorConfig(
    flavor: Flavor.development,
    flavorValues: FlavorValues(
      baseUrl: const String.fromEnvironment(
        'BASE_URL_API',
      ),
    ),
  );
  await mainInit();
}
