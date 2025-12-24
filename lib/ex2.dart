import 'package:flutter/material.dart';

class Ex2 extends StatefulWidget {
  const Ex2({super.key});

  @override
  State<Ex2> createState() => _Ex2State();
}

class _Ex2State extends State<Ex2> {
  // final TextEditingController _controller = TextEditingController();
  final TextEditingController _namecontroller = TextEditingController();
  final TextEditingController _agecontroller = TextEditingController();
  final TextEditingController _weightcontroller = TextEditingController();
  final TextEditingController _heightcontroller = TextEditingController();
  String _result = "";

  @override
  void dispose() {
    // _controller.dispose();
    super.dispose();
  }

  void calBMI() {
    String name = _namecontroller.text;
    int age = int.parse(_agecontroller.text);
    double weight = double.parse(_weightcontroller.text);
    double height_cm = double.parse(_heightcontroller.text);
    double height_m = height_cm / 100;

    double bmi = weight / (height_m * height_m);

    setState(() {
      _result = 'Name : $name \n'
          'Age : $age years. \n'
          'Weight : ${weight.toStringAsFixed(2)} kg. \n'
          'Height : ${height_cm.toStringAsFixed(2)} kg. \n'
          'BMI = ${bmi.toStringAsFixed(2)}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App-Ex2-Calculator-BMI"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.text,
                controller: _namecontroller,
                decoration: InputDecoration(
                  labelText: "Name",
                  hintText: " John Doe",
                  prefix: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                keyboardType: TextInputType.number,
                controller: _agecontroller,
                decoration: InputDecoration(
                  labelText: "Age (years.)",
                  hintText: " Such as 20years.",
                  prefix: Icon(Icons.date_range),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                keyboardType: TextInputType.number,
                controller: _weightcontroller,
                decoration: InputDecoration(
                  labelText: "Weight (kg.)",
                  hintText: " Such as 60kg.",
                  prefix: Icon(Icons.width_full),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                keyboardType: TextInputType.number,
                controller: _heightcontroller,
                decoration: InputDecoration(
                  labelText: "Height (cm.)",
                  hintText: " Such as 170cm.",
                  prefix: Icon(Icons.height),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  calBMI();
                },
                child: Text("Calculate"),
              ),
              SizedBox(height: 20),
              Text(
                '$_result',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 0, 51, 94),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
