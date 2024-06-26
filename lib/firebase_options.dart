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
    apiKey: 'AIzaSyBu81Cx2nwsds8_q3Yt1a_JkKAeX5iJ-yI',
    appId: '1:861277541206:web:95033b9b373d6500bd3cf7',
    messagingSenderId: '861277541206',
    projectId: 'fir-auth-61baa',
    authDomain: 'fir-auth-61baa.firebaseapp.com',
    storageBucket: 'fir-auth-61baa.appspot.com',
    measurementId: 'G-G5B9WVG76P',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDeOPnGDPTlEdpKxg3lp1fHbOSIjZqsS9g',
    appId: '1:861277541206:android:86a544a52c8f8523bd3cf7',
    messagingSenderId: '861277541206',
    projectId: 'fir-auth-61baa',
    storageBucket: 'fir-auth-61baa.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBuw6O4CmbcpqDrR3AN9IhpUDW0UzWiL0Q',
    appId: '1:861277541206:ios:890bc006e125583dbd3cf7',
    messagingSenderId: '861277541206',
    projectId: 'fir-auth-61baa',
    storageBucket: 'fir-auth-61baa.appspot.com',
    iosBundleId: 'com.example.werocks',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBuw6O4CmbcpqDrR3AN9IhpUDW0UzWiL0Q',
    appId: '1:861277541206:ios:e57eebee2232581cbd3cf7',
    messagingSenderId: '861277541206',
    projectId: 'fir-auth-61baa',
    storageBucket: 'fir-auth-61baa.appspot.com',
    iosBundleId: 'com.example.werocks.RunnerTests',
  );
}
