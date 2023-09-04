import 'package:flutter/material.dart';

TextEditingController textfieldcontroller = TextEditingController();
double result = 0;

class CurrencyCoverter extends StatefulWidget {
  const CurrencyCoverter({super.key});

  @override
  State<CurrencyCoverter> createState() => _CurrencyCoverterState();
}

class _CurrencyCoverterState extends State<CurrencyCoverter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0,
        title: const Text(
          'Currency Converter',
          style: TextStyle(color: Colors.white70),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '€ ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}', // Display result with 2 decimal places
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                controller: textfieldcontroller,
                keyboardType: const TextInputType.numberWithOptions(
                    decimal: true, signed: true),
                decoration: InputDecoration(
                  border: border(),
                  focusedBorder: border(),
                  enabledBorder: border(),
                  fillColor: Colors.white70,
                  filled: true,
                  hintText: 'Please enter the currency',
                  hintStyle: const TextStyle(color: Colors.black, fontSize: 18),
                  prefixIcon: const Icon(
                    Icons.attach_money_outlined,
                    color: Colors.black,
                  ),
                ),
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textfieldcontroller.text) * 0.92;
                  });
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: Colors.blueGrey,
                ),
                child: const Text(
                  'Convert',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
        color: Colors.black87,
      ),
      borderRadius: BorderRadius.circular(10.0),
    );
  }
}
