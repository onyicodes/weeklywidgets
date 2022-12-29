import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      automaticallyImplyLeading: false,
      
      title:const Text('Explore'),
      systemOverlayStyle:const SystemUiOverlayStyle(statusBarColor: Colors.white),
      ),
      backgroundColor: Colors.green,
    body: const Center(child: Text('Explore')),);
  }
}