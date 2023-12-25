// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyB2n4Zc_v06E206o5y5jM4Jkim-B2P8Zzw',
    appId: '1:393298951247:web:77316b12641b164eddbe3a',
    messagingSenderId: '393298951247',
    projectId: 'projectisef',
    authDomain: 'projectisef.firebaseapp.com',
    storageBucket: 'projectisef.appspot.com',
    measurementId: 'G-2LG8JK2L2Q',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAmZKngjs7Je9ebglMuKhY0GCScAuCkq1A',
    appId: '1:393298951247:android:4d5427569969401fddbe3a',
    messagingSenderId: '393298951247',
    projectId: 'projectisef',
    storageBucket: 'projectisef.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA3530nWB_UMlIuhgS5zSLpwI947HBUoO0',
    appId: '1:393298951247:ios:d008c9ca3c43dbcfddbe3a',
    messagingSenderId: '393298951247',
    projectId: 'projectisef',
    storageBucket: 'projectisef.appspot.com',
    iosBundleId: 'com.example.projectiseeff',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA3530nWB_UMlIuhgS5zSLpwI947HBUoO0',
    appId: '1:393298951247:ios:b9cb348e9a8f9984ddbe3a',
    messagingSenderId: '393298951247',
    projectId: 'projectisef',
    storageBucket: 'projectisef.appspot.com',
    iosBundleId: 'com.example.projectiseeff.RunnerTests',
  );
}
