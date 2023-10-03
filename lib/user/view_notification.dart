import 'package:flutter/material.dart';

class NotificationModel {
  final String message;
  final DateTime date;
  final Map<String, dynamic> bookingDetails;

  NotificationModel({required this.message, required this.date, required this.bookingDetails});
}

class NotificationView extends StatelessWidget {
  final List<NotificationModel> notifications;

  NotificationView({required this.notifications});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return ListTile(
            title: Text(notification.message),
            subtitle: Text(notification.date.toString()),
            onTap: () {
              // Handle tap on notification (e.g., show details)
            },
          );
        },
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: NotificationView(
        notifications: [
          NotificationModel(
            message: 'Your booking is confirmed!',
            date: DateTime.now(),
            bookingDetails: {'vehicle': 'Car', 'date': '2023-09-01'},
          ),
          // Add more notifications...
        ],
      ),
    ),
  );
}
