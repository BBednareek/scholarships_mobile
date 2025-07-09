import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

FirebaseOptions getFirebaseOptions() {
  return FirebaseOptions(
    apiKey: dotenv.get('APIKEY'),
    appId: dotenv.get('APPID'),
    messagingSenderId: dotenv.get('MESSAGINGSENDERID'),
    projectId: dotenv.get('PROJECTID'),
  );
}
