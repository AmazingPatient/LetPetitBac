import 'package:flutter/material.dart';


class Qrcode extends StatelessWidget {
  const Qrcode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:const Text('Qrcode')),
      body: const Center(
        child: Text('Qrcode'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: '',
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt_sharp),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_sharp),
            label: 'Settings',
          ),
        ],
        //currentIndex: _selectedIndex,
        //selectedItemColor: Colors.amber[800],
        //onTap: _onItemTapped,
      ),

    );
  }
}