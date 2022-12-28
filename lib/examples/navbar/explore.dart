import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      automaticallyImplyLeading: false,
      
      title:const Text('Explore'),),
      backgroundColor: Colors.green,
    body: const Center(child: Text('Explore')),);
  }
}