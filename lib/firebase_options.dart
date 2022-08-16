import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC51qTw-5ddOWRaTITJ7eMl68a16Zv8mig',
    appId: '1:1052124223571:android:d42b8311a2cc3488148ea6',
    messagingSenderId: '1052124223571',
    projectId: 'pelada-plus',
    storageBucket: 'pelada-plus.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD3fezc9lhekR3TuHJgbqH4laeFrG_XIx4',
    appId: '1:1052124223571:ios:411514975cee1199148ea6',
    messagingSenderId: '1052124223571',
    projectId: 'pelada-plus',
    storageBucket: 'pelada-plus.appspot.com',
    iosClientId:
        '1052124223571-ra02jievcdr2l1bdr7vds6u34m35t517.apps.googleusercontent.com',
    iosBundleId: 'com.example.appPeladaPlus',
  );
}
