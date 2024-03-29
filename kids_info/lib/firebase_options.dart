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
    apiKey: 'AIzaSyD6qDbGoREsRVH_qtLZxnvD5goiptbgpX0',
    appId: '1:667939635284:web:dee06e4d65009b4a442dc1',
    messagingSenderId: '667939635284',
    projectId: 'kids-info',
    authDomain: 'kids-info.firebaseapp.com',
    storageBucket: 'kids-info.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA6Ux0r-45O345EgOxXZ9G5bulyRen6cJs',
    appId: '1:667939635284:android:8be7ade4d70e5376442dc1',
    messagingSenderId: '667939635284',
    projectId: 'kids-info',
    storageBucket: 'kids-info.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDv_l3yQ9z4G7Mx6ciYhbh7UcRzX3LbbWQ',
    appId: '1:667939635284:ios:4c393b8edfef7539442dc1',
    messagingSenderId: '667939635284',
    projectId: 'kids-info',
    storageBucket: 'kids-info.appspot.com',
    iosClientId: '667939635284-r2ng41jglag17ddgsn9k7hkvt338eo99.apps.googleusercontent.com',
    iosBundleId: 'com.piotrwezyk.kidsInfo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDv_l3yQ9z4G7Mx6ciYhbh7UcRzX3LbbWQ',
    appId: '1:667939635284:ios:4c393b8edfef7539442dc1',
    messagingSenderId: '667939635284',
    projectId: 'kids-info',
    storageBucket: 'kids-info.appspot.com',
    iosClientId: '667939635284-r2ng41jglag17ddgsn9k7hkvt338eo99.apps.googleusercontent.com',
    iosBundleId: 'com.piotrwezyk.kidsInfo',
  );
}
