import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import '../compount/drower.dart';
import '../pages/store.dart';
import 'package:sizer/sizer.dart';

class Home extends StatefulWidget{
  State <StatefulWidget> createState(){
    return HomeState();
  }
}

class HomeState extends State<Home>{
  final itemKey = GlobalKey();
  final controller = ScrollController();
  var isVisible = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
      if(controller.position.atEdge){
        if(controller.position.pixels>0 && !isVisible) {
          setState(() {
            isVisible = true;
          });
        }
      }
      else if(isVisible){
        setState(() {
          isVisible = false;
        });
      }
    });
  }
   @override
  Widget build(BuildContext context) {
     double width = MediaQuery.of(context).size.width;
     double height = MediaQuery.of(context).size.height;
     //----- Start Functions -----//
     //1
     void scrollUp(){
       final double start = 0;
       controller.animateTo(start, duration: Duration(milliseconds: 300), curve:Curves.easeIn,);
     }
     //2
     Container funHorizantal(img,title){
       return Container(
         width: width*0.4,
         child: ListTile(
           title: Image.asset(img,height: height*0.18,fit: BoxFit.fill,),
           subtitle: Container(
             padding: EdgeInsets.symmetric(vertical: height * 0.014),
             child: Text(title,style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w500), textAlign: TextAlign.center),
           ),
         ),
       );
     }
     //3
     InkWell funGVInkWell(img,title){
       return InkWell(
         child: GridTile(
           child: Container(
             margin: EdgeInsets.all(5),
             child: Card(
                 child: Column(
                   children: <Widget>[
                     Expanded(child: Image.asset(img,alignment: Alignment.center,fit: BoxFit.cover,),),
                     Container(child: Text(title,textAlign: TextAlign.center, style: TextStyle(color: Colors.black),),),
                   ],
                 ),
             ),
           ),
         ),
         onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => Store()),);},
       );
     }
     //----- End Functions -----//

    // throw UnimplementedError();
    return Scaffold(
      //----appBar----//

      appBar: AppBar(
        title: Text("All notes"),
        centerTitle: true,
        //elevation: 500,
        // titleSpacing: 5,
        backgroundColor: Colors.black87,
        actions: <Widget>[IconButton(icon: Icon(Icons.search), onPressed: () {}),],
      ),

      //----drawer----//

      drawer: MyDrawer(),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: const Text('Total'),
        icon: const Icon(Icons.shopping_cart_outlined),
        backgroundColor: Colors.deepOrange,
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      //------Body-----//

      body: Container(
        color: Color.fromARGB(120, 20,20,20 ),
        alignment: Alignment.center,
        //height: 500,
        child:
        ListView(
          controller: controller,
          scrollDirection: Axis.vertical,
          children: <Widget>[
            //##########---Photos---##########//
            SizedBox(
              height: height*0.3,
              width: double.infinity,
              child: Carousel(
                images: <Widget>[
                  Image.asset("images/offer.jpg",alignment: Alignment.center,fit: BoxFit.fill,),
                  Image.asset("images/BF.jpg",alignment: Alignment.center,fit: BoxFit.fill,),
                  Image.asset("images/phones1.jpg",alignment: Alignment.center,fit: BoxFit.fill,),
                ], // List of images
                dotColor: Colors.red,
                dotSize: 7,
                //dotIncreaseSize: 2,
                dotSpacing: 25,
                dotBgColor: Colors.green.withOpacity(0.2),
                dotIncreasedColor: Colors.white,
                indicatorBgPadding: 10,
                // boxFit: BoxFit.cover, // for offline imgs
                //---- Radius ----
                borderRadius: true,
                radius: Radius.circular(100),
                overlayShadow: true,
              ),
            ),

            Divider(height: 0),

            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: height*0.02),
                  Center(child:Container(child: Text("Categories",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w800),),),),
                  Divider(height: 10),
                  Container(
                    height: height*0.25,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        funHorizantal('images/IPhone.jpg',"Apple"),
                        funHorizantal('images/Samsung.jpeg',"Samsung"),
                        funHorizantal('images/Huawei.jpg',"Huawei"),
                        funHorizantal('images/OnePlus.jpg',"OnePlus"),
                        funHorizantal('images/oppo.jpg',"Oppo"),
                        funHorizantal('images/Tecno.png',"Tecno"),
                        funHorizantal('images/vivo.png',"Vivo"),
                        funHorizantal('images/xiaomi.png',"Xiaomi"),
                        funHorizantal('images/lg.jpg',"LG"),
                        funHorizantal('images/nokia.jpg',"Nokia"),
                        funHorizantal('images/Lenovo.png',"Lenovo"),
                      ],
                    ),
                  ),
                  //------------------
                  Divider(height: 0),
                  Center(child: Text("Stores",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w800),),),
                  Divider(height: 9),
                  Container(
                    height: height*0.6,
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                      children: <Widget>[
                        //----
                        funGVInkWell("images/store1.jpg","Store1"),
                        funGVInkWell("images/store2.jpg","Store2"),
                        funGVInkWell("images/store3.jpg","Store3"),
                        funGVInkWell("images/1j.jpg","Store4"),
                        funGVInkWell("images/2j.jpg","Store5"),
                        funGVInkWell("images/2j.jpg","Store5"),
                        funGVInkWell("images/2j.jpg","Store5"),
                        funGVInkWell("images/2j.jpg","Store5"),
                        funGVInkWell("images/2j.jpg","Store5"),
                        //----
                      ],
                    ),
                  ),
                  Center(
                    child: Text("AMMAR", style:TextStyle(color: Colors.black, fontSize: 20,),),
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(right: 230),
            //   child: Visibility(visible: isVisible,
            //     child: FloatingActionButton(child: Icon(Icons.arrow_upward_sharp), onPressed: scrollUp,),
            //   ),
            // ),
          ],
        ),
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
