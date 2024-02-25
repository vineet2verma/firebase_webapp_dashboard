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
    apiKey: 'AIzaSyDHhwmB8_zEfAE7cwaV1qmiBwjuG810zBs',
    appId: '1:31349460129:web:045b985cc5afd0cef7f4e0',
    messagingSenderId: '31349460129',
    projectId: 'gateentry-8b6e3',
    authDomain: 'gateentry-8b6e3.firebaseapp.com',
    storageBucket: 'gateentry-8b6e3.appspot.com',
    measurementId: 'G-8RVNS7KP22',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDn7HYqZSCJacrhzHErmu6VPt2r0pa0hNQ',
    appId: '1:31349460129:android:4ca82a7d02b1784cf7f4e0',
    messagingSenderId: '31349460129',
    projectId: 'gateentry-8b6e3',
    storageBucket: 'gateentry-8b6e3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDy1KiBmja7kN78Z93A1z38bhbSbrAXMDE',
    appId: '1:31349460129:ios:45ff600e699026d7f7f4e0',
    messagingSenderId: '31349460129',
    projectId: 'gateentry-8b6e3',
    storageBucket: 'gateentry-8b6e3.appspot.com',
    iosBundleId: 'com.example.firebasetodoapp2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDy1KiBmja7kN78Z93A1z38bhbSbrAXMDE',
    appId: '1:31349460129:ios:45ff600e699026d7f7f4e0',
    messagingSenderId: '31349460129',
    projectId: 'gateentry-8b6e3',
    storageBucket: 'gateentry-8b6e3.appspot.com',
    iosBundleId: 'com.example.firebasetodoapp2',
  );
}