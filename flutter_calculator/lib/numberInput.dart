import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NumberInput extends StatelessWidget {
  TextEditingController _numController;
  NumberInput({super.key, required TextEditingController numController})
      : _numController = numController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _numController,
      decoration: InputDecoration(
        labelText: 'Enter 1st number',
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
    );
  }
}
