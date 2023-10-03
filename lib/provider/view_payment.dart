import 'package:flutter/material.dart';

class PaymentView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Invoice #12345',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Provider: John Doe',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Amount: \$100.00',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Payment Method:',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 8.0),
            DropdownButton<String>(
              hint: Text('Select Payment Method'),
              items: <String>[
                'Credit Card',
                'PayPal',
                'Bank Transfer',
                'Cash',
              ].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String newValue) {
                // Handle payment method selection
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Implement payment processing logic here
                // You might use a payment gateway SDK or API
                // to complete the payment process.
              },
              child: Text('Make Payment'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PaymentView(),
  ));
}
