import 'package:currency_converter_app_dev/currency_converter_app.dart';
import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertino extends StatefulWidget {
  const CurrencyConverterCupertino({super.key});

  @override
  State<CurrencyConverterCupertino> createState() =>
      _CurrencyConverterCupertinoState();
}

class _CurrencyConverterCupertinoState
    extends State<CurrencyConverterCupertino> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.activeBlue,
        middle: Text(
          'Currency Converter',
          style: TextStyle(color: CupertinoColors.white),
        ),
      ),
      backgroundColor: CupertinoColors.activeBlue,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '€ ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}', // Display result with 2 decimal places
                style: const TextStyle(
                  color: CupertinoColors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CupertinoTextField(
                controller: textfieldcontroller,
                keyboardType: const TextInputType.numberWithOptions(
                    decimal: true, signed: true),
                decoration: const BoxDecoration(
                  border: Border(),
                ),
                style: const TextStyle(
                  color: CupertinoColors.black,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CupertinoButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textfieldcontroller.text) * 0.92;
                  });
                },
                child: const Text(
                  'Convert',
                  style: TextStyle(
                    color: CupertinoColors.white,
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
}
