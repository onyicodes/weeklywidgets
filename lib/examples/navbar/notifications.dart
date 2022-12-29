import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      automaticallyImplyLeading: false,
      title:const Text('Notifications'),
      systemOverlayStyle:const SystemUiOverlayStyle(statusBarColor: Colors.white),
      ),
      backgroundColor: Colors.lightBlue,
    body: const Center(child: Text('Notifications')),);
  }
}