import 'package:injectable/injectable.dart';
import 'package:valoku_app/core/config/injector.dart';

enum Flavor {
  development,
  production,
}

class FlavorValues {
  final String baseUrl;

  FlavorValues({
    required this.baseUrl,
  });
}

class FlavorConfig {
  final Flavor flavor;
  final FlavorValues flavorValues;
  static FlavorConfig? _instance;

  factory FlavorConfig({
    required Flavor flavor,
    required FlavorValues flavorValues,
  }) {
    _instance ??= FlavorConfig._internal(flavor, flavorValues);
    return _instance!;
  }

  FlavorConfig._internal(this.flavor, this.flavorValues);

  static FlavorConfig? get instance => _instance;

  static bool isDevelopment() => _instance!.flavor == Flavor.development;

  static bool isProduction() => _instance!.flavor == Flavor.production;

  static Environment get env {
    switch (_instance!.flavor) {
      case Flavor.development:
        return development;
      case Flavor.production:
        return production;
      default:
        return development;
    }
  }
}
