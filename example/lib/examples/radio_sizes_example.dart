import 'package:easy_radio/easy_radio.dart';
import 'package:flutter/material.dart';

class RadioSizedExample extends StatefulWidget {
  const RadioSizedExample({super.key});

  @override
  State<RadioSizedExample> createState() => _RadioSizedExampleState();
}

class _RadioSizedExampleState extends State<RadioSizedExample> {
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
          radius: 12.0,
          dotRadius: 6.0,
        ),
        EasyRadio<int>(
          value: 2,
          groupValue: _groupValue,
          onChanged: _onChanged,
          radius: 16.0,
          dotRadius: 8.0,
        ),
        EasyRadio<int>(
          value: 3,
          groupValue: _groupValue,
          onChanged: _onChanged,
          radius: 24.0,
          dotRadius: 12.0,
        ),
      ],
    );
  }
}
