import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      automaticallyImplyLeading: false,
      title:const Text('Search'),),
      backgroundColor: Colors.teal,
    body: const Center(child: Text('Search')),);
  }
}