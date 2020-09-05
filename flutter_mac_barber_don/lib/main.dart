import 'package:barber_don/login.page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MaterialApp(localizationsDelegates: [
    DefaultWidgetsLocalizations.delegate,
    DefaultMaterialLocalizations.delegate,
  ], debugShowCheckedModeBanner: false, home: LoginPage()));
}
