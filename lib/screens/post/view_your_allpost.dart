import 'package:flutter/material.dart';

class ViewYourpost extends StatelessWidget {
  const ViewYourpost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          Text("View your post"),
        ],
      ),
    );
  }
}
