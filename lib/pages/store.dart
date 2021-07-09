import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:sizer/sizer.dart';

class Store extends StatefulWidget {
  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  //========Functions=======//

  //=========End Functions===========//

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    Container funHorizantal(img, title) {
      return Container(
        width: width * 0.4,
        child: ListTile(
          title: Image.asset(
            img,
            height: height * 0.18,
            alignment: Alignment.center,
            fit: BoxFit.contain,
          ),
          subtitle: Container(
            child: Text(title,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center),
          ),
        ),
      );
    }

    Text nameOfStore(name) {
      return Text(name);
    }

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: nameOfStore("name"),
          actions: <Widget>[
            // padding: EdgeInsets.only(left: 10),
            IconButton(
                icon: Icon(
                  Icons.search,
                ),
                onPressed: () {}),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Cat",
              ),
              Tab(
                text: "Ct",
              ),
              Tab(
                text: "Ct",
              ),
            ],
          ),
        ),

        body: Stack(
          children: [
            TabBarView(
              children: <Widget>[
                First(),
                Second(),
                Second(),

              ],
            ),
            Container(
              padding:  EdgeInsets.fromLTRB(7,5,7,13),
              // padding: EdgeInsets.only(left: width*0.08),
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(15),),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),),
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.shopping_cart_outlined,color: Colors.white,),
                      SizedBox(width: 5),
                      Text(
                        "Add items",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                      SizedBox(width: width*0.17),
                      Text(
                        "Total JD",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                      SizedBox(width: 2),
                      Text(
                        "555.000",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),

                    ],
                  ),


                ),
              ),
            ),
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
  int _itemCount = 0;

  Card theCommodity(img, name1, type, name2, name3, price,id) {
    return Card(
      key: Key(id),
      child: Row(
        children: <Widget>[
          // Container(
          //   child: Expanded(
          //     flex: 1,
          //     child: Image.asset(img),
          //   ),
          // ),
          // you can't change height in last Container
          // height: height*0.148,
          Expanded(
            flex: 2,
            child: Container(
              // alignment: Alignment.center,
              // height: height * 0.18,
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Name: ${name1}",
                          style:
                              TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
                        ),
                      ),
                      // Container(
                      //   padding: EdgeInsets.only(left: 10),
                      //   alignment: Alignment.topLeft,
                      //   child: Text(
                      //     "type: ${type}",
                      //     style: TextStyle(fontSize: 18, color: Colors.grey),
                      //   ),
                      // ),
                      // Container(
                      //   child: Expanded(
                      //     child: Text(
                      //       "Name: ${name2}",
                      //       style: TextStyle(fontSize: 18, color: Colors.grey),
                      //     ),
                      //   ),
                      // ),
                      // Container(child: Expanded(child: Text("Name: ${name3}",style: TextStyle(fontSize: 18,color: Colors.grey),),),),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        alignment: Alignment.bottomLeft,
                        // decoration: BoxDecoration(border: Border.all(color: Colors.red),),
                        // padding: EdgeInsets.only(top: 5),
                        margin: EdgeInsets.only(top: 17),
                        child: Text(
                          "Price: ${price} JD",
                          style: TextStyle(fontSize: 17, color: Colors.red),
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              _itemCount != 0
                  ? IconButton(
                      icon: Icon(
                        Icons.remove,
                        color: Colors.red,
                      ),
                      onPressed: () => setState(() => _itemCount--),
                    )
                  : Container(),
              Text(_itemCount.toString()),

              IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.green,
                ),
                onPressed: () => setState(() => _itemCount++),
              ),

            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return ListView(
      children: <Widget>[
        Divider(
          height: 10,
        ),
        Container(
          height: height * 0.16,
          child: theCommodity("images/1j.jpg", "ss", "ww", "ee", "rr", "44","111"),
        ),
        Container(
          height: height * 0.16,
          child: theCommodity("images/1j.jpg", "ss", "ww", "ee", "rr", "44","111"),
        ),
        Container(
          height: height * 0.16,
          child: theCommodity("images/1j.jpg", "ss", "ww", "ee", "rr", "44","222"),
        ),
        Container(
          height: height * 0.16,
          child: theCommodity("images/1j.jpg", "ss", "ww", "ee", "rr", "44","444"),
        ),
        Container(
          height: height * 0.16,
          child: theCommodity("images/1j.jpg", "ss", "ww", "ee", "rr", "44","555"),
        ),

      ],
    );
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
    return Card(
      child: Icon(
        Icons.add,
        size: 100.0,
        color: Colors.green,
      ),
    );
  }
}
//---------------------------------------------------------------------------

// SizedBox(
//   height: height * 0.2,
//   width: double.infinity,
//   child: Carousel(
//     images: <Widget>[
//       Image.network('https://wallpapercave.com/wp/wp9198106.jpg',
//           fit: BoxFit.cover),
//       Image.network(
//           'https://wallpapercave.com/wp/wp9198106.jpg',
//           fit: BoxFit.cover),
//     ],
//     // List of images
//     dotColor: Colors.red,
//     dotSize: 7,
//     //dotIncreaseSize: 2,
//     dotSpacing: 25,
//     dotBgColor: Colors.green.withOpacity(0.2),
//     dotIncreasedColor: Colors.white,
//     //showIndicator: false,
//     indicatorBgPadding: 10,
//     // boxFit: BoxFit.cover, // for offline imgs
//     //---- Radius ----
//     borderRadius: true,
//     radius: Radius.circular(20),
//     overlayShadow: true,
//     overlayShadowColors: Colors.yellow,
//   ),
// ),
// Container(color: Colors.green,height: 10,),
// SizedBox(
//   height: 10,
// ),
// Text(
//   "Name of store",
//   style: TextStyle(
//     fontSize: 20,
//   ),
//   textAlign: TextAlign.center,
// ),
// SizedBox(
//   height: 10,
// ),
// Container(
//   height: height * 0.25,
//   width: double.infinity,
//   child: ListView(
//     scrollDirection: Axis.horizontal,
//     children: <Widget>[
//       funHorizantal('images/IPhone.jpg', "Apple"),
//       funHorizantal('images/Samsung.jpeg', "Samsung"),
//       funHorizantal('images/Huawei.jpg', "Huawei"),
//       funHorizantal('images/OnePlus.jpg', "OnePlus"),
//       funHorizantal('images/oppo.jpg', "Oppo"),
//       funHorizantal('images/Tecno.png', "Tecno"),
//       funHorizantal('images/vivo.png', "Vivo"),
//       funHorizantal('images/xiaomi.png', "Xiaomi"),
//       funHorizantal('images/lg.jpg', "LG"),
//       funHorizantal('images/nokia.jpg', "Nokia"),
//       funHorizantal('images/Lenovo.png', "Lenovo"),
//     ],
//   ),
// ),
// SizedBox(
//   height: 10,
// ),
// DefaultTabController(
//   length: 3,
//   child: new Positioned(
//     top: 0.0,
//     left: 0.0,
//     right: 0.0,
//     child: AppBar(
//       bottom: TabBar(tabs: [
//         Tab(text: "Cat",),
//         Tab(text: "Ct",),
//         Tab(text: "Ct",),
//       ],),
//       title: Text(''),// You can add title here
//       leading: new IconButton(
//         icon: new Icon(Icons.arrow_back_ios, color: Colors.grey),
//         onPressed: () {Navigator.pop(context);},
//       ),
//       backgroundColor: Colors.blue.withOpacity(0.3), //You can make this transparent
//       elevation: 0.0, //No shadow
//     ),
//   ),
// ),
