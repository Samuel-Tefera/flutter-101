import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AddNumbersPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AddNumbersPage extends StatefulWidget {
  @override
  _AddNumbersPageState createState() => _AddNumbersPageState();
}

class _AddNumbersPageState extends State<AddNumbersPage> {
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();

  double result = 0;

  double getNum1() => double.tryParse(num1Controller.text) ?? 0;
  double getNum2() => double.tryParse(num2Controller.text) ?? 0;

  void addNumbers() {
    setState(() {
      result = getNum1() + getNum2();
    });
  }

  void subtractNumbers() {
    setState(() {
      result = getNum1() - getNum2();
    });
  }

  void multiplayNumber() {
    setState(() {
      result = getNum1() * getNum2();
    });
  }

  void divideNumbers() {
    setState(() {
      result = getNum1() / getNum2();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Enter first number",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Enter second number",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: addNumbers, child: Text("+")),
                ElevatedButton(onPressed: subtractNumbers, child: Text("-")),
                ElevatedButton(onPressed: multiplayNumber, child: Text("x")),
                ElevatedButton(onPressed: divideNumbers, child: Text("/")),
              ],
            ),

            SizedBox(height: 20),
            Text("Result: $result", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
