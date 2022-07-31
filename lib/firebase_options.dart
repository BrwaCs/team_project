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
    apiKey: 'AIzaSyACNvJofBjXKMVFF2bGhzgQIfJ7u7jT9eY',
    appId: '1:1093359056962:web:612de8b243aa50f69155db',
    messagingSenderId: '1093359056962',
    projectId: 'teamproject-59a31',
    authDomain: 'teamproject-59a31.firebaseapp.com',
    storageBucket: 'teamproject-59a31.appspot.com',
    measurementId: 'G-3B63TV2D3E',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBU2Ree1IqGjazPQnsCdpR0URTk9oaBtRM',
    appId: '1:1093359056962:android:bacc7b97be89dbec9155db',
    messagingSenderId: '1093359056962',
    projectId: 'teamproject-59a31',
    storageBucket: 'teamproject-59a31.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDvTecIYcY11_o8M5EMl5miwXJKXjZks9k',
    appId: '1:1093359056962:ios:43ba7d33f094e3ba9155db',
    messagingSenderId: '1093359056962',
    projectId: 'teamproject-59a31',
    storageBucket: 'teamproject-59a31.appspot.com',
    iosClientId: '1093359056962-od3i0ochq9mqor3imdd19v8pqcbt8gba.apps.googleusercontent.com',
    iosBundleId: 'com.example.teamProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDvTecIYcY11_o8M5EMl5miwXJKXjZks9k',
    appId: '1:1093359056962:ios:43ba7d33f094e3ba9155db',
    messagingSenderId: '1093359056962',
    projectId: 'teamproject-59a31',
    storageBucket: 'teamproject-59a31.appspot.com',
    iosClientId: '1093359056962-od3i0ochq9mqor3imdd19v8pqcbt8gba.apps.googleusercontent.com',
    iosBundleId: 'com.example.teamProject',
  );
}
