import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      automaticallyImplyLeading: false,
      title:const Text('Profile'),
      systemOverlayStyle:const SystemUiOverlayStyle(statusBarColor: Colors.white),
      ),
      backgroundColor: Colors.blueGrey,

    body: const Center(child: Text('Profile')),);
  }
}