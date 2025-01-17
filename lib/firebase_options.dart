// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAIlF9XDyZgSTrjSfE9rb-H_OfUTiO_c_w',
    appId: '1:770676192298:web:77ed02433e340a6ec9ff53',
    messagingSenderId: '770676192298',
    projectId: 'fcm-flutter-cdb44',
    authDomain: 'fcm-flutter-cdb44.firebaseapp.com',
    storageBucket: 'fcm-flutter-cdb44.appspot.com',
    measurementId: 'G-DCLDRWCNWW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCthfyKqNDbFmfMx_e2H8rgvD_RABmZ95g',
    appId: '1:770676192298:android:0d942d139d0c4d7dc9ff53',
    messagingSenderId: '770676192298',
    projectId: 'fcm-flutter-cdb44',
    storageBucket: 'fcm-flutter-cdb44.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB_cB0NVdfrcH5zYTrEQEAGByYiBdFeqLo',
    appId: '1:770676192298:ios:e53f86b7fd0b6812c9ff53',
    messagingSenderId: '770676192298',
    projectId: 'fcm-flutter-cdb44',
    storageBucket: 'fcm-flutter-cdb44.appspot.com',
    iosBundleId: 'com.example.fcmFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB_cB0NVdfrcH5zYTrEQEAGByYiBdFeqLo',
    appId: '1:770676192298:ios:e53f86b7fd0b6812c9ff53',
    messagingSenderId: '770676192298',
    projectId: 'fcm-flutter-cdb44',
    storageBucket: 'fcm-flutter-cdb44.appspot.com',
    iosBundleId: 'com.example.fcmFlutter',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAIlF9XDyZgSTrjSfE9rb-H_OfUTiO_c_w',
    appId: '1:770676192298:web:9ac081a2a3e0f6eac9ff53',
    messagingSenderId: '770676192298',
    projectId: 'fcm-flutter-cdb44',
    authDomain: 'fcm-flutter-cdb44.firebaseapp.com',
    storageBucket: 'fcm-flutter-cdb44.appspot.com',
    measurementId: 'G-G2VTDYF7Z3',
  );
}
