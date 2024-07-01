import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    final outlineBorder = OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.blueAccent,
          width: 2.0,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(50));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0,
        title: const Text(
          'Currency Converter',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '0',
              style: TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  style: const TextStyle(
                    color: Colors.blueAccent,
                  ),
                  decoration: InputDecoration(
                      hintText: 'Please Enter Amount in USD',
                      hintStyle: const TextStyle(color: Colors.blueAccent),
                      prefixIcon: const Icon(Icons.monetization_on),
                      prefixIconColor: Colors.blueAccent,
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: outlineBorder,
                      enabledBorder: outlineBorder)),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: const Text('Convert')),
            )
          ],
        ),
      ),
    );
  }
}
