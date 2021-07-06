import 'package:first_flutter_app/compount/drower.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text("About"),
      ),
      body: Container(
        child: Text("AAAAAAAAA"),
      ),
    );
  }
}
