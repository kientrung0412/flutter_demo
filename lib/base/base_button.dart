import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BaseButton extends StatefulWidget {
  var title;
  Function onPressed;
  double panddingHorizontal;
  double panddingVertical;

  BaseButton(
      {this.onPressed,
      this.title,
      this.panddingHorizontal = 0,
      this.panddingVertical = 0});

  @override
  _BaseButtonState createState() => _BaseButtonState();
}

class _BaseButtonState extends State<BaseButton> {
  Function _onPressed;
  var _title;
  double _panddingHorizontal;
  double _panddingVertical;

  @override
  void initState() {
    _onPressed = widget.onPressed;
    _title = widget.title;
    _panddingHorizontal = widget.panddingHorizontal;
    _panddingVertical = widget.panddingVertical;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        padding: EdgeInsets.symmetric(
            horizontal: _panddingHorizontal, vertical: _panddingVertical),
        onPressed: _onPressed,
        child: Text(
          _title,
          style: TextStyle(color: Colors.blue),
        ));
  }
}
