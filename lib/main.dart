import 'package:flutter/material.dart';
import 'package:flutterprovidor/screenone.dart';
import 'package:flutterprovidor/userSetup.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<MyModel>(create: (context) {
      return MyModel();
    }),
  ], child: MaterialApp(home: ScreenOne())));
}
