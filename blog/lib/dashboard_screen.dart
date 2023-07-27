import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blog'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Center(
            child: 'Bye World'
                .text
                .color(Colors.amber)
                .size(24)
                .fontWeight(FontWeight.w500)
                .make(),
          ),
        ],
      ),
    );
  }
}
