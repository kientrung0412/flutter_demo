import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

// ignore: must_be_immutable
class SwitchLanguage extends StatefulWidget {
  bool vi;

  SwitchLanguage({this.vi = true});

  @override
  _SwitchLanguageState createState() => _SwitchLanguageState();
}

class _SwitchLanguageState extends State<SwitchLanguage> {
  bool _vi;

  @override
  void initState() {
    _vi = widget.vi;
    super.initState();
  }

  void changeLang(bool val) {
    setState(() {
      _vi = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: LiteRollingSwitch(
        textOff: "EN",
        textOn: "VI",
        value: _vi,
        textSize: 16,
        onChanged: (bool state) {
          // changeLang(state);
        },
      ),
    );
  }
}
