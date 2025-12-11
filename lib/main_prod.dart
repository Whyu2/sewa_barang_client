import 'package:sewa_barang_client/core/config/flavors.dart';
import 'package:sewa_barang_client/main.dart';

Future<void> main() async {
  FlavorConfig(
    flavor: Flavor.production,
    flavorValues: FlavorValues(
      baseUrl: const String.fromEnvironment('BASE_URL_API'),
    ),
  );
  await mainInit();
}
