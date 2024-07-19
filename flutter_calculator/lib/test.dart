import 'package:flutter/material.dart';

class Calc extends StatefulWidget {
  const Calc({super.key});

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  final _nums1Controller = TextEditingController();
  final _nums2Controller = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Result $result'),
            TextField(
              controller: _nums1Controller,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            TextField(
              controller: _nums2Controller,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  if (_nums1Controller.text.isNotEmpty &&
                      _nums2Controller.text.isNotEmpty)
                    result = double.parse(_nums1Controller.text) +
                        double.parse(_nums2Controller.text);
                });
              },
              color: Colors.blue,
              child: Text('Add'),
            )
          ],
        ),
      ),
    );
  }
}
