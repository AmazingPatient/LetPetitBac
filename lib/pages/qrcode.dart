import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Qrcode extends StatefulWidget {
  const Qrcode({Key? key}) : super(key: key);

  @override
  State<Qrcode> createState() => _QRCodePageState();
}

class _QRCodePageState extends State<Qrcode> {
  TextEditingController _controller = TextEditingController();
  String data = "Le petit bac";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('QRCode')),
      body: Column(
        children: [
          QrImage(
            data: data,
            size: 200,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide(width: 1))),
              controller: _controller,
              onChanged: (value) {
                setState(() {
                  data = value;
                });
              },
            ),
          )
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              child: Icon(Icons.qr_code_2_outlined),
              onPressed: () {}
          )
        ],
      ),
    );
  }
}












/*

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
    );
  }
}
*/