import 'package:first_flutter_app/compount/drower.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("About"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: (){Navigator.of(context).pushReplacementNamed('homePage');},
          ),
          bottom: TabBar(tabs: [
            Tab(text: "Cat",),
            Tab(text: "Ct",),
            Tab(text: "Ct",),
          ],),
        ),
        body: TabBarView(
          children: <Widget>[
            First(),
            Second(),
            Second(),
          ],
        ),
      ),
    );
  }
}

//-------Pages appBar-------//
//-------1
class First extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Card(child: Icon(Icons.add,size: 100.0,color: Colors.deepOrange,),);
  }
}
//-------2
class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Card(child: Icon(Icons.add,size: 100.0,color: Colors.green,),);
  }
}