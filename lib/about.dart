import 'package:flutter/material.dart';

import 'component/mydrawer.dart';
class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bloc Testing'),
        centerTitle: true,
      ),
      drawer:MyDrawer() ,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("About Of Pabna",style: TextStyle(fontSize: 40,color: Colors.grey.shade700),)
          ],
        ),
      ),
    );
  }
}
