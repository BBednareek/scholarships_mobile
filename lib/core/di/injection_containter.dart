import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:scholarships/core/di/injection_containter.config.dart';

final GetIt locator = GetIt.instance;

@InjectableInit()
void configureDependencies() => locator.init();