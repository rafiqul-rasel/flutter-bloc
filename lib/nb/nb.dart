import 'package:bloc_practice/component/mydrawer.dart';
import 'package:bloc_practice/nb/block.dart';
import 'package:flutter/material.dart';


class Nbloc extends StatelessWidget {
   Nbloc({Key? key}) : super(key: key);
  counterBloc _bloc=new counterBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bloc Testing'),
        centerTitle: true,
      ),
      drawer:MyDrawer() ,
      body: Container(
        child: Center(
          child: StreamBuilder<int>(
            stream: _bloc.getStream(),
            initialData: 0,
            builder: (context, snapshot) {
              return Text("${snapshot.data}",style: TextStyle(fontSize: 40,color: Colors.grey.shade700),);
            }
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0.0,
    child: new Icon(Icons.check),
    backgroundColor: new Color(0xFFE57373),
    onPressed: (){
          _bloc.increment();
    }
      ),
    );
  }
}
