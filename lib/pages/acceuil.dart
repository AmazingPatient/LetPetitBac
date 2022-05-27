import 'package:flutter/material.dart';
import 'package:lepetitbac/pages/home.dart';
import 'package:lepetitbac/widgets/mydrawer.widget.dart';

class Acceuil extends StatelessWidget {
  const Acceuil({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      drawer: MyDrawer(),
      body: Center(
        child: Text("Le petit bac", 
        style: TextStyle(color: Colors.white, fontStyle: FontStyle.normal, fontSize: 60, fontWeight: FontWeight.bold),)
          ),
          floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton.extended(
            extendedPadding: EdgeInsets.all(25),
            //child: Text('Get Started'),
            onPressed: (){
              Navigator.push(
              context,
               MaterialPageRoute(builder: (context) =>  Home()),
               );
            },
            label: const Text('Commencer', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
            backgroundColor: Colors.white,
            )
            
        ],
      ),
        );
    
    
  }
}