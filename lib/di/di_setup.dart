// import 'package:critterpedia_plus/di/di_setup.config.dart';
import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:critterpedia_plus/di/di_setup.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: false,
  asExtension: false,
)
FutureOr<void> configureDependencies() => $initGetIt(getIt);
