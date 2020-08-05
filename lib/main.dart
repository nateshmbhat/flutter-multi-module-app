import 'package:core/my_app.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/screens/my_screen/my_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MyApp(
      startUpTestScreen: MyScreen(),
    ),
  );
}
