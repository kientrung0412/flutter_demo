import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BaseInput extends StatefulWidget {
  var hint;
  double marginVertical;
  bool isPassword;

  BaseInput({this.hint, this.marginVertical = 8.0, this.isPassword = false});

  @override
  _BaseInputState createState() => _BaseInputState();
}

class _BaseInputState extends State<BaseInput> {
  var _hint;
  double _marginVertical;
  bool _isPassword;

  @override
  void initState() {
    _hint = widget.hint;
    _marginVertical = widget.marginVertical;
    _isPassword = widget.isPassword;
    super.initState();
  }

  InputDecoration textDeco(String hint) {
    return InputDecoration(hintText: hint, border: OutlineInputBorder());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: _marginVertical),
      child: TextFormField(
        obscureText: !_isPassword,
        decoration: textDeco(_hint),
      ),
    );
  }
}
