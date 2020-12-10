import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/base/base_button.dart';
import '../base/base_input.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [FormLogin()],
        ),
      ),
    );
  }
}

class FormLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Form(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        BaseInput(hint: "Tên người dùng"),
        BaseInput(hint: "Mật khẩu"),
        BaseButton(
          title: "Đăng nhập",
          panddingHorizontal: 16,
        )
      ])),
    );
  }
}
