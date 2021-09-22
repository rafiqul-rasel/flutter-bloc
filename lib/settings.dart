import 'package:flutter/material.dart';
import 'package:bloc_practice/component/mydrawer.dart';
class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("Please Change your Settings")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Slider(value: 0,min: 0,
                    max: 100,   onChanged:(v){

                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
