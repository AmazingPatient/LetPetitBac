import 'package:flutter/material.dart';

class  MyDrawer extends StatelessWidget {
   const MyDrawer({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final List <dynamic>menus=[
      {'title':'Home','icon':Icon(Icons.home,color:Theme.of(context).primaryColor),'route':'/home'},
      {'title':'Camera','icon':Icon(Icons.camera_alt_sharp  ,color:Theme.of(context).primaryColor),'route':'/camera'},
      {'title':'QR Code','icon':Icon(Icons.qr_code,color:Theme.of(context).primaryColor),'route':'/qrcode'},
      {'title':'Parametres','icon':Icon(Icons.settings,color:Theme.of(context).primaryColor),'route':'/parametres'},
      {'title':'profil','icon':Icon(Icons.account_circle_sharp ,color:Theme.of(context).primaryColor),'route':'/profil'},
    ];
    return Drawer(
      child:Column(
        children: [

          DrawerHeader(
            decoration: BoxDecoration(
                   color: Theme.of(context).primaryColor,
            ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              const CircleAvatar(
                radius:50,
                backgroundImage: AssetImage("assets/profil.jpg"),
              ),
              IconButton(onPressed: (){}, icon: const Icon(Icons.settings),
              color:Theme.of(context).primaryColorDark,
              )
            ],

          )
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index){
                  return ListTile(
                    onTap: (){
                      Navigator.of(context).pop();
                      Navigator.pushNamed(context, menus[index]['route']);
                    },
                    leading:menus[index]['icon'],
                    title:Text("${menus[index]['title']}", style:TextStyle(color:Theme.of(context).primaryColor)),

                  );

                },

                separatorBuilder: (_,index){
                  return Divider(
                    height: 1,
                    color:Theme.of(context).primaryColor,
                  );
                },
                itemCount: menus.length
            ),
          )
        ],
      ) ,


    );
  }
}