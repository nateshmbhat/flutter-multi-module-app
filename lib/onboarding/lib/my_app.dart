// @author nateshmbhat created on 17,June,2020
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class MyApp extends StatefulWidget {

  ///If [startUpTestScreen] is not [null] , then the given widget is shown as the first screen instead of considering [initialScreenRoute]
  final Widget startUpTestScreen;

  const MyApp({this.startUpTestScreen});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
     home: widget.startUpTestScreen,
      title: 'MyApp',
      themeMode: ThemeMode.light,
      theme: NeumorphicThemeData(
        lightSource: LightSource.topLeft,
        depth: 10,
      ),
    );
  }
}
