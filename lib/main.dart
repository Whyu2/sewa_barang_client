import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:pretty_bloc_observer/pretty_bloc_observer.dart';
import 'package:sewa_barang_client/core/config/flavors.dart';

import 'package:sewa_barang_client/app.dart';

import 'core/config/config.dart';

Future<void> mainInit() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies(environment: FlavorConfig.env);
  Bloc.observer = PrettyBlocObserver();
  await initializeDateFormatting();
  runApp(
    const App(),
  );
}
