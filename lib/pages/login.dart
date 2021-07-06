import 'package:flutter/material.dart';
import '../compount/drower.dart';
class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(

      appBar: AppBar(
        // leading: IconButton(icon: Icon(Icons.security) , onPressed: (){} ),
        title: Text("Login Page"),
        centerTitle: true,
        elevation: 50,
        // titleSpacing: 5,
        backgroundColor: Colors.black87,
      ),
      drawer: MyDrawer(),
      body: Container(
        child: ListView(
          children: <Widget>[
            Divider(height: 20),

            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Center(
                    heightFactor: 2,
                    child: Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),

                  Container(
                    color: Colors.grey,
                    child: Column(
                      children: <Widget>[
                        TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            hintText: "User Name",
                            hintStyle: TextStyle(color: Colors.lightGreen),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                                // width: 30,
                              ),
                            ),
                          ),
                        ),
                        // Divider(height: 20),
                        TextField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            // prefixIcon: Icon(Icons),
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.lightGreen),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),


    );
  }
}