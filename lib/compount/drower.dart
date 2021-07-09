import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // TODO: implement build
    return Container(
      width: width*0.65,
      child: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                "Ammar Omari",
                style: TextStyle(
                    backgroundColor: Colors.grey,
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(
                "osama@gmail.com",
                style: TextStyle(
                    backgroundColor: Colors.grey,
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              currentAccountPicture: CircleAvatar(child: Icon(Icons.person)),
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqf60aQorzLu0l6eLHrEgn7nIzCN-wL_ZMfA&usqp=CAU"),
                    fit: BoxFit.cover),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home_outlined, size: 32),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.blue, fontSize: 17),
              ),
              // trailing: Icon(Icons.hot_tub),
              subtitle: Text("Ammar Omari"),
              isThreeLine: true,
              // dense: true,
              // contentPadding: EdgeInsets.all(5),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('homePage');
              },
              onLongPress: () {
                //print("long press");
              },
              //
            ),
            Divider(height: 0,),
            ListTile(
              leading: Icon(Icons.history_outlined),
              title: Text(
                "History",
                style: TextStyle(color: Colors.blue),
              ),
              //
              // trailing: Icon(Icons.hot_tub),
              // contentPadding: EdgeInsets.all(13),
              //
              onTap: () {
                Navigator.of(context).pushReplacementNamed('categories');
              },
            ),
            Divider(height: 0,),
            ListTile(
              leading: Icon(Icons.account_balance_outlined),
              title: Text(
                "About",
                style: TextStyle(color: Colors.blue),
              ),
              // trailing: Icon(Icons.hot_tub),
              // contentPadding: EdgeInsets.all(13),
              //
              onTap: () {
                Navigator.of(context).pushReplacementNamed('about');
              },
            ),
            Divider(height: 0),
            ListTile(
              leading: Icon(Icons.settings_outlined),
              title: Text(
                "Settings",
                style: TextStyle(color: Colors.blue),
              ),
            ),

            //------Log In ----//
            Divider(height: 0),
            ListTile(
              leading: Icon(Icons.login),
              title: Text(
                "Log In",
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('login');
              },
            ),
            Divider(height: 0),
            ListTile(
              leading: Icon(Icons.logout,color: Colors.red,),
              title: Text(
                "Log Out",
                style: TextStyle(color: Colors.red),
              ),
              onTap: () {
                //
              },
            ),
            //------Log In ----//
          ],
        ),
      ),
    );
  }
}
