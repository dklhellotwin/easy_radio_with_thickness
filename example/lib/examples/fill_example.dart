import 'package:easy_radio/easy_radio.dart';
import 'package:flutter/material.dart';

class FillExample extends StatefulWidget {
  const FillExample({super.key});

  @override
  State<FillExample> createState() => _FillExampleState();
}

class _FillExampleState extends State<FillExample> {
  int? _groupValue = 1;

  void _onChanged(int? value) {
    setState(() {
      _groupValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        EasyRadio<int>(
          value: 1,
          groupValue: _groupValue,
          onChanged: _onChanged,
          // just set dotRadius equal to radius
          dotRadius: 12.0,
          radius: 12.0,
        ),
        EasyRadio<int>(
          value: 2,
          groupValue: _groupValue,
          onChanged: _onChanged,
          // just set dotRadius equal to radius
          dotRadius: 12.0,
          radius: 12.0,
        ),
        EasyRadio<int>(
          value: 3,
          groupValue: _groupValue,
          onChanged: _onChanged,
          // just set dotRadius equal to radius
          dotRadius: 12.0,
          radius: 12.0,
        ),
      ],
    );
  }
}
