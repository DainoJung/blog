import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CallBack'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Count: $value', style: const TextStyle(fontSize: 30)),
          TestButton(upCount),
        ],
      ),
    );
  }

  void upCount(int addValue) => setState(() => value += addValue);
}

class TestButton extends StatelessWidget {
  final Function(int) callback;
  const TestButton(this.callback, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => callback.call(1),
      onDoubleTap: () => callback.call(5),
      onLongPress: () => callback.call(10),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        width: double.infinity,
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            decoration: BoxDecoration(border: Border.all()),
            child: const Text(
              'Up',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
