import 'package:flutter/material.dart';

void main() {
  runApp(TransportationBookingApp());
}

class TransportationBookingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transportation Booking',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TransportationBookingPage(),
    );
  }
}

class TransportationBookingPage extends StatefulWidget {
  @override
  _TransportationBookingPageState createState() =>
      _TransportationBookingPageState();
}

class _TransportationBookingPageState extends State<TransportationBookingPage> {
  String selectedTransportType = 'Car';
  String selectedDate = '';
  String selectedTime = '';

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 30)),
    );

    if (pickedDate != null) {
      setState(() {
        selectedDate = pickedDate.toString();
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      setState(() {
        selectedTime = pickedTime.format(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Transportation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Transportation Type:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            DropdownButton<String>(
              value: selectedTransportType,
              onChanged: (newValue) {
                setState(() {
                  selectedTransportType = newValue!;
                });
              },
              items: ['Car', 'Bus', 'Train', 'Airplane']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 16),
            Text(
              'Select Date:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () => _selectDate(context),
              child: Text(selectedDate.isNotEmpty
                  ? selectedDate
                  : 'Select a date'),
            ),
            SizedBox(height: 16),
            Text(
              'Select Time:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () => _selectTime(context),
              child: Text(selectedTime.isNotEmpty
                  ? selectedTime
                  : 'Select a time'),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // Logic to proceed with booking
              },
              child: Text('Book Now'),
            ),
          ],
        ),
      ),
    );
  }
}
