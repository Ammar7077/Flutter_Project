import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import '../compount/drower.dart';
import '../pages/store.dart';

class Home extends StatefulWidget{
  State <StatefulWidget> createState(){
    return HomeState();
  }
}

class HomeState extends State<Home>{
   @override
  Widget build(BuildContext context) {

     //----- Founctions -----//
     var c = 0;
     double width = MediaQuery.of(context).size.width;
     double height = MediaQuery.of(context).size.height;

     Container funHorizantal(img,title){
       return Container(
         width: width*0.4,
         child: ListTile(
           title: Image.asset(img,height: height*0.18,),
           subtitle: Container(
             child: Text(title,style: TextStyle(color: Colors.lightBlue), textAlign: TextAlign.center),
           ),
         ),
       );
     }
     InkWell funGVInkWell(img,title){
       return InkWell(
         child: GridTile(child: Image.asset(img), footer: Container(
           height: height*0.03,
           color: Colors.blue.withOpacity(0.5),
           child: Text(title,textAlign: TextAlign.center, style: TextStyle(color: Colors.red),),),
         ),
         onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => Store()),);},

       );
     }


    // throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(icon: Icon(Icons.security) , onPressed: (){} ),
        title: Text("All notes"),
        centerTitle: true,
        //elevation: 500,
        // titleSpacing: 5,
        backgroundColor: Colors.black87,
        //
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),

      //----drawer----//

      drawer: MyDrawer(),

      //------Body-----//

      body: Container(
        color: Color.fromARGB(220, 20,20,20 ),
        alignment: Alignment.center,
        //height: 500,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            //##########---Photos---##########//
            SizedBox(
              height: height*0.3,
              width: double.infinity,
              child: Carousel(
                images: <Widget>[
                  Image.network('https://wallpapercave.com/wp/wp9198106.jpg', fit: BoxFit.cover),
                  Image.network('https://i.pinimg.com/originals/f8/9f/b5/f89fb51cbd1f75c783b6cbcc8dc59b48.jpg',fit:BoxFit.cover),
                  // AssetImage('https://wallpapercave.com/wp/wp2697274.jpg'),
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
                radius: Radius.circular(100),
                overlayShadow: true,
                overlayShadowColors: Colors.yellow,
              ),
            ),
            //################---##################//
            //-----
            //##########---ListView---##########//

            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Center(child: Text('ABC',style: TextStyle(fontSize: 30,color: Colors.lightGreenAccent,),),),
                  Container(
                    height: height*0.25,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        funHorizantal('images/2j.jpg',"Kira"),
                        funHorizantal('images/2j.jpg',"Kira"),
                        funHorizantal('images/2j.jpg',"Kira"),
                        funHorizantal('images/2j.jpg',"Kira"),
                        funHorizantal('images/2j.jpg',"Kira"),
                      ],
                    ),
                  ),
                  //------------------
                  Center(child: Text("Least products",style: TextStyle(fontSize: 20,color: Colors.blue),),),
                  SizedBox(height: height*0.03),
                  Container(
                    height: height*0.6,
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                      children: <Widget>[
                        //----
                        funGVInkWell("images/1j.jpg"," title1"),
                        funGVInkWell("images/1j.jpg"," title2"),
                        funGVInkWell("images/1j.jpg"," title3"),
                        funGVInkWell("images/1j.jpg"," title4"),
                        funGVInkWell("images/1j.jpg"," title5"),
                        //----
                      ],
                    ),
                  ),
                  //-----------//
                  Center(
                    heightFactor: height*0.0025,
                    child: Text("|=Title=|",style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 20,),),
                  ),
                  Center(
                    child: Text('$c', style:TextStyle(color: Colors.yellow, fontSize: 50,),),
                  ),
                  Center(
                    child: Text("AMMAR", style:TextStyle(color: Colors.lightBlue, fontSize: 20,),),
                  ),

                ],
              ),
            ),
            //---

          ],

        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            c+=2;
          });
          //print('$c');
        },
        child: Icon(Icons.add),
      ),
    );
  }

  // ----------- for errors i think ------------ //
   @override
   State<StatefulWidget> createState() {
     // TODO: implement createState
     throw UnimplementedError();
   }
}
