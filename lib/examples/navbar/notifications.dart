import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      automaticallyImplyLeading: false,
      title:const Text('Notifications'),),
      backgroundColor: Colors.lightBlue,
    body: const Center(child: Text('Notifications')),);
  }
}