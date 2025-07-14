import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:scholarships/core/bloc_observer/bloc_observer.dart';
import 'package:scholarships/core/di/injection_containter.dart';
import 'package:scholarships/firebase_options.dart';

class MainMethods {
  static Future<void> mainAddon() async {
    WidgetsFlutterBinding.ensureInitialized();
    final Directory directory = await getApplicationDocumentsDirectory();

    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: HydratedStorageDirectory(directory.path),
    );

    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    Bloc.observer = MyBlocObserver();

    Platform.isAndroid
        ? await Firebase.initializeApp(options: getFirebaseOptions())
        : await Firebase.initializeApp();

    configureDependencies();
  }
}
