import 'package:flutter/material.dart';

import 'src/application/apps/apps.dart';
import 'src/application/configurations/configurations.dart';

void main() async {
  await configuration(
    () => runApp(const MainApp()),
  );
}
