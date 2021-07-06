import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Store extends StatefulWidget {
  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    Text nameOfStore (name){
      return Text(name);
    }

    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: nameOfStore("name"),
      ),

      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: height*0.3,
              width: double.infinity,
              child: Carousel(
                images: <Widget>[
                  Image.network('https://wallpapercave.com/wp/wp9198106.jpg', fit: BoxFit.cover),
                  Image.network('https://i.pinimg.com/originals/f8/9f/b5/f89fb51cbd1f75c783b6cbcc8dc59b48.jpg',fit:BoxFit.cover),
                ], // List of images
                dotColor: Colors.red,
                dotSize: 7,
                //dotIncreaseSize: 2,
                dotSpacing: 25,
                dotBgColor: Colors.green.withOpacity(0.2),
                dotIncreasedColor: Colors.white,
                //showIndicator: false,
                indicatorBgPadding: 10,
                // boxFit: BoxFit.cover, // for offline imgs
                //---- Radius ----
                borderRadius: true,
                radius: Radius.circular(20),
                overlayShadow: true,
                overlayShadowColors: Colors.yellow,
              ),
            ),
            Text("Name of store",style: TextStyle(fontSize: 20,),textAlign: TextAlign.center,),
        Container(
          height: height * 0.17,
          child: Card(
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Image.asset("images/1j.jpg", fit: BoxFit.cover),
                ),
                Expanded(
                  flex: 2,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.topCenter,
                          child: Text("name"),
                        ),
                      ],
                    ),
                  ),
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
}
