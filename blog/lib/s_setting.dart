import 'package:blog/w_switch_menu.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool isPushOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Platform'),
        backgroundColor: Colors.black,
      ),
      body: SwitchMenu(
        '푸쉬 설정',
        isPushOn,
        onChanged: (isOn) {
          setState(() {
            isPushOn = isOn;
          });
        },
      ),
    );
  }
}
