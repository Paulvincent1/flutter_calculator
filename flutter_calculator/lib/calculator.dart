import 'package:flutter/material.dart';
import 'package:flutter_calculator/buttons.dart';
import 'package:flutter_calculator/numberInput.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final _num1Controller = TextEditingController();
  final _num2Controller = TextEditingController();
  double _result = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Result : $_result',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              NumberInput(numController: _num1Controller),
              SizedBox(
                height: 20,
              ),
              NumberInput(
                numController: _num2Controller,
              ),
              Container(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Buttons(
                          num1: _num1Controller,
                          num2: _num2Controller,
                          title: 'Multiply',
                          operator: '*',
                          setResult: (double result) {
                            setState(() {
                              _result = result;
                            });
                          }),
                      Buttons(
                          num1: _num1Controller,
                          num2: _num2Controller,
                          title: 'Divide',
                          operator: '/',
                          setResult: (double result) {
                            setState(() {
                              _result = result;
                            });
                          }),
                    ],
                  )),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Buttons(
                        num1: _num1Controller,
                        num2: _num2Controller,
                        title: 'Add',
                        operator: '+',
                        setResult: (double result) {
                          setState(() {
                            _result = result;
                          });
                        }),
                    Buttons(
                        num1: _num1Controller,
                        num2: _num2Controller,
                        title: 'Clear',
                        operator: 'clear',
                        setResult: (double result) {
                          setState(() {
                            _result = 0;
                          });
                        }),
                    Buttons(
                        num1: _num1Controller,
                        num2: _num2Controller,
                        title: 'Subtract',
                        operator: '-',
                        setResult: (double result) {
                          setState(() {
                            _result = result;
                          });
                        }),
                  ],
                ),
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
