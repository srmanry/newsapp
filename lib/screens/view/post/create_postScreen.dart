import 'package:flutter/material.dart';
import 'package:thakurgaonbarta/customs/custom_appbar.dart';
import 'package:thakurgaonbarta/style/textstyle.dart';

class CreatePostscreen extends StatelessWidget {
  const CreatePostscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title:
            Text("Create News", style: hedartext.copyWith(color: Colors.red)),
      ),
      body: const Column(
        children: [
          CustomAppBar(),
          Center(
            child: Text("create post"),
          )
        ],
      ),
    );
  }
}
