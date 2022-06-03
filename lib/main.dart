import 'package:flutter/material.dart';
import 'package:lepetitbac/pages/acceuil.dart';
import 'package:lepetitbac/pages/camera.dart';
import 'package:lepetitbac/pages/home.dart';
import 'package:lepetitbac/pages/parametres.dart';
import 'package:lepetitbac/pages/profil.dart';
import 'package:lepetitbac/pages/qrcode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/home" : (context)=>Home(),
        "/acceuil" : (context)=>Acceuil(),
        "/camera" : (context)=>CameraExampleHome(),
        "/parametres" : (context)=>Parametres(),
        "/profil" : (context)=>Profil(),
        "/qrcode" : (context)=>Qrcode(),

      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/acceuil",
      home: Acceuil(),
    );
  }
}