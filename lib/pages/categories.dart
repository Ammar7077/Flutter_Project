import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../compount/drower.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    Container historyRow(img, name, WisHmuch, price,time) {
      return Container(
        height: height * 0.17,
        child: Card(
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Image.asset(img, fit: BoxFit.cover),
              ),
              Expanded(
                flex: 2,
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topCenter,
                        child: Text(name),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(WisHmuch),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(price),
                      ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        child: Text(time),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
        centerTitle: true,
      ),
      drawer: MyDrawer(),
      body: ListView(
        children: <Widget>[
          historyRow("images/1j.jpg", "_Name_", "_What is_ && _how much_", "price","5/5/777"),
          historyRow("images/1j.jpg", "_Name_", "_What is_ && _how much_", "price","5/5/777"),
        ],
      ),
    );
  }
}
