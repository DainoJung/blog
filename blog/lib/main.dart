import 'package:blog/screen/s_new_page.dart';
import 'package:blog/screen/s_test.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Blog',
      routerConfig: GoRouter(
        routes: [
          GoRoute(
              path: '/',
              name: 'home',
              builder: (context, _) => const TestPage()),
          GoRoute(
              path: '/new',
              name: 'new',
              builder: (context, _) => const NewPage()),
        ],
        initialLocation: '/',
      ),
    );
  }
}
