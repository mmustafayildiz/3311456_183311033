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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBOsfnUmNFRwnOxNd1i_NvKuag0Rgtfmrs',
    appId: '1:161478825797:android:f30369419388dac1d7902c',
    messagingSenderId: '161478825797',
    projectId: 'mobil-eczane-fb6ba',
    databaseURL: 'https://mobil-eczane-fb6ba-default-rtdb.firebaseio.com',
    storageBucket: 'mobil-eczane-fb6ba.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDjxf-z63AR8XPTuNFLDbZsRbQlAvydEHw',
    appId: '1:161478825797:ios:fef380d1aaf2db70d7902c',
    messagingSenderId: '161478825797',
    projectId: 'mobil-eczane-fb6ba',
    databaseURL: 'https://mobil-eczane-fb6ba-default-rtdb.firebaseio.com',
    storageBucket: 'mobil-eczane-fb6ba.appspot.com',
    iosClientId: '161478825797-0hn7u1r8akf5u5q0k1o5tc881h8sb8cg.apps.googleusercontent.com',
    iosBundleId: 'com.mobileczanexl.flutterapp.mobilEczane',
  );
}
