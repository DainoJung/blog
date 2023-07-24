// Flutter와 Material 디자인 라이브러리를 가져옵니다.
import 'package:flutter/material.dart';

// StatefulWidget을 확장하여 LoginPage 클래스를 만듭니다.
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}

// State를 확장하여 _LoginPageState 클래스를 만듭니다.
class LoginPageState extends State<LoginPage> {
  // TextEditingController 객체를 사용하여 텍스트 필드의 입력을 관리합니다.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // 앱 바 제목 설정
          title: const Text('로그인'),
        ),
      ),
    );
  }
}
