import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Center(
              child: Row(
                children: [
                  Expanded(
                    child: Icon(Icons.account_circle, color: Colors.white,size: 40,),
                    flex: 2,
                  ),
                  Expanded(
                    flex: 6,
                    child: Text(
                      "Bloc",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: Text("Home",style: TextStyle(fontSize: 20,color: Colors.grey.shade700),),
            leading: IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            onTap: ()
            {
              Navigator.of(context).pop();
              Navigator.pushNamed(context,'/');
            },
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: Text("About",style: TextStyle(fontSize: 20,color: Colors.grey.shade700),),
            leading: IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {
              },
            ),
            onTap: ()
            {
              Navigator.of(context).pop();
              Navigator.pushNamed(context,'about');
            },
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: Text("Setting",style: TextStyle(fontSize: 20,color: Colors.grey.shade700),),
            leading: IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
              },
            ),
            onTap: ()
            {
              //Navigator.of(context).pop();
               Navigator.pushNamed(context,'setting');
            },
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: Text("bloc",style: TextStyle(fontSize: 20,color: Colors.grey.shade700),),
            leading: IconButton(
              icon: Icon(Icons.accessible_forward),
              onPressed: () {
              },
            ),
            onTap: ()
            {
              //Navigator.of(context).pop();
              Navigator.pushNamed(context,'bloc');
            },
          )
        ],
      ) ,
    );
  }
}
