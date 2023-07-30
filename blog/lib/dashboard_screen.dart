import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Blog'),
          backgroundColor: Colors.black,
        ),
        body: AppBar(
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ));
  }
}
