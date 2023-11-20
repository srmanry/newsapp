import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  String? listtile;
  Widget? icons;
  Color? color;
  ProfileScreen({super.key, this.listtile, this.icons, this.color});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              height: 200,
              color: Colors.red,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text("User Name"),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Card(
              child: ListTile(
                // leading: Icon(
                //   Icons.login,
                //   color: Colors.red,
                // ),
                title: Text("Signup"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Card(
                child: ListTile(
                  // leading: Icon(
                  //   Icons.login,
                  //   color: Colors.red,
                  // ),
                  title: Text("Login"),
                ),
              ),
            ),
            const Card(
              child: ListTile(
                // leading: Icon(
                //   Icons.login,
                //   color: Colors.red,
                // ),
                title: Text("View all post"),
              ),
            ),
            // const ListTile(
            //   leading:  Icon(Icons.login,color: Colors.red,),
            //   title: Text("Login"),

            // ),
          ],
        ),
      ),
    );
  }
}
