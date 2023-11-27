import 'package:flutter/material.dart';

class ViewYourpost extends StatelessWidget {
  const ViewYourpost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          TextButton(onPressed: () {}, child: Text("ROUT")),
          Text("View your post"),
        ],
      ),
    );
  }
}
