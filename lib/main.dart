import 'package:bloc_practice/about.dart';
import 'package:bloc_practice/settings.dart';
import 'package:flutter/material.dart';
import 'component/mydrawer.dart';
import 'nb/nb.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
        initialRoute: '/',
        routes: <String, WidgetBuilder> {
          '/': (BuildContext context) =>MyHomePage(title: 'Bloc Testing') ,
          'about': (BuildContext context) => About(),
          'setting': (BuildContext context) => Settings(),
          'bloc': (BuildContext context) => Nbloc(),

        },
      //home: MyHomePage(title: 'Bloc Testing'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      drawer:MyDrawer() ,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Hello Pabna",style: TextStyle(fontSize: 60,color: Colors.grey.shade700),)
          ],
        ),
      ),
    );

  }
}
