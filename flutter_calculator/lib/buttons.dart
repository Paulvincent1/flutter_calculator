import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Buttons extends StatefulWidget {
  TextEditingController _num1Controller;
  TextEditingController _num2Controller;
  String title;
  String operator;
  Function(double) setResult;
  Buttons(
      {super.key,
      required TextEditingController num1,
      required TextEditingController num2,
      required this.operator,
      required this.setResult,
      required this.title})
      : _num1Controller = num1,
        _num2Controller = num2;

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        if (widget._num1Controller.text.isNotEmpty &&
            widget._num2Controller.text.isNotEmpty) {
          switch (widget.operator) {
            case '*':
              widget.setResult(double.parse(widget._num1Controller.text) *
                  double.parse(widget._num2Controller.text));
              break;
            case '/':
              widget.setResult(double.parse(widget._num1Controller.text) /
                  double.parse(widget._num2Controller.text));
              break;
            case '+':
              widget.setResult(double.parse(widget._num1Controller.text) +
                  double.parse(widget._num2Controller.text));
              break;
            case '-':
              widget.setResult(double.parse(widget._num1Controller.text) -
                  double.parse(widget._num2Controller.text));
              break;
            case 'clear':
              widget._num1Controller.clear();
              widget._num2Controller.clear();
              break;
          }
        } else {
          print('Empty');
        }
      },
      color: Colors.black,
      child: Text(
        widget.title,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
