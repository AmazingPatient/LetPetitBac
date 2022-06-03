import 'package:flutter/material.dart';
import 'package:lepetitbac/pages/acceuil.dart';
import 'package:lepetitbac/widgets/mydrawer.widget.dart';
import 'package:lepetitbac/widgets/mydrawer.widget.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List <dynamic>barre=[
      {'icon':Icon(Icons.home,color:Theme.of(context).primaryColor),'route':'/home'},
      {'icon':Icon(Icons.camera_alt_sharp  ,color:Theme.of(context).primaryColor),'route':'/camera'},
      {'icon':Icon(Icons.qr_code,color:Theme.of(context).primaryColor),'route':'/qrcode'},
      {'icon':Icon(Icons.settings,color:Theme.of(context).primaryColor),'route':'/parametres'},
      {'icon':Icon(Icons.account_circle_sharp ,color:Theme.of(context).primaryColor),'route':'/profil'},
    ];
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(title: Text('Le petit bac', 
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),),
      body: Center(
        child: Text("Bienvenue au petit bac", 
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
        ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton.extended(
            
            //extendedPadding:  EdgeInsets.all(50.0),
            onPressed: (){
              Navigator.push(
              context,
               MaterialPageRoute(builder: (context) => Acceuil()),
               );
            },
            label: const Text('Jouer', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            backgroundColor: Theme.of(context).primaryColor,
            )
        ],
      ),
    );
  }
}