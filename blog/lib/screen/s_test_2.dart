import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Page'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Go to Back'),
          onPressed: () {
            context.pop();
          },
        ),
      ),
    );
  }
}
