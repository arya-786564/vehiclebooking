// This is a simplified example and doesn't include actual authentication or database integration.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vehicle Booking Portal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: VehicleListScreen(),
    );
  }
}

class Vehicle {
  final String name;
  final double price;
  final String imageUrl;
  bool isAvailable;

  Vehicle(this.name, this.price, this.imageUrl, this.isAvailable);
}

class VehicleListScreen extends StatelessWidget {
  final List<Vehicle> vehicles = [
    Vehicle('Sedan', 50, 'https://example.com/sedan.jpg', true),
    Vehicle('SUV', 70, 'https://example.com/suv.jpg', true),
    Vehicle('Convertible', 100, 'https://example.com/convertible.jpg', false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Vehicle Listings')),
      body: ListView.builder(
        itemCount: vehicles.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(vehicles[index].name),
            subtitle: Text('Price: \$${vehicles[index].price} / day'),
            trailing: vehicles[index].isAvailable
                ? ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        VehicleDetailsScreen(vehicles[index]),
                  ),
                );
              },
              child: Text('Book Now'),
            )
                : Text('Not Available'),
          );
        },
      ),
    );
  }
}

class VehicleDetailsScreen extends StatelessWidget {
  final Vehicle vehicle;

  VehicleDetailsScreen(this.vehicle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(vehicle.name)),
      body: Column(
        children: [
          Image.network(vehicle.imageUrl),
          SizedBox(height: 20),
          Text('Price: \$${vehicle.price} / day'),
          ElevatedButton(
            onPressed: () {
              // Implement booking process here
            },
            child: Text('Book Now'),
          ),
        ],
      ),
    );
  }
}
