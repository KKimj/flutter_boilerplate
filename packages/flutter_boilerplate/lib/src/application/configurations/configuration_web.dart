import 'dart:async';

import 'package:firebase_core/firebase_core.dart';

import '../options/firebase_options_development.dart';

Future<void> configuration(FutureOr<void> Function()? appRunner) async {
  await runZonedGuarded(
    () async {
      await Firebase.initializeApp(
        options: FirebaseOptionsDevelopment.currentPlatform,
      );
      appRunner?.call();
    },
    (Object exception, StackTrace stackTrace) {},
  );
  return;
}
