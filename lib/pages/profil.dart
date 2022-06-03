import 'package:flutter/material.dart';


class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:const Text('Profil')),
      body: const Center(
        child: Text('Profil'),

      ),
    );
  }
}