// import 'package:flutter/material.dart';
//
// class FeedbackView extends StatefulWidget {
//   @override
//   _FeedbackViewState createState() => _FeedbackViewState();
// }
//
// class _FeedbackViewState extends State<FeedbackView> {
//   // Define variables to store user input
//   String feedback = '';
//   double rating = 0.0;
//
//   // Function to submit feedback
//   void submitFeedback() {
//     // Implement your logic to submit feedback here
//     // You can send the feedback and rating to a server or store it locally
//     // Display a confirmation message or navigate to another screen
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Feedback'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'We value your feedback!',
//               style: TextStyle(fontSize: 20.0),
//             ),
//             SizedBox(height: 20.0),
//             Text(
//               'Rate your experience:',
//               style: TextStyle(fontSize: 16.0),
//             ),
//             Slider(
//               value: rating,
//               onChanged: (newRating) {
//                 setState(() {
//                   rating = newRating;
//                 });
//               },
//               min: 0.0,
//               max: 5.0,
//               divisions: 5,
//               label: rating.toString(),
//             ),
//             Text('Rating: $rating'),
//             SizedBox(height: 20.0),
//             Text(
//               'Tell us more about your experience:',
//               style: TextStyle(fontSize: 16.0),
//             ),
//             TextFormField(
//               maxLines: 4,
//               onChanged: (value) {
//                 setState(() {
//                   feedback = value;
//                 });
//               },
//               decoration: InputDecoration(
//                 hintText: 'Enter your feedback here...',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 20.0),
//             ElevatedButton(
//               onPressed: submitFeedback,
//               child: Text('Submit Feedback'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// void main() => runApp(MaterialApp(
//   home: FeedbackView(),
// ));


import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FeedbackView(),
  ));
}

class FeedbackView extends StatefulWidget {
  @override
  _FeedbackViewState createState() => _FeedbackViewState();
}

class _FeedbackViewState extends State<FeedbackView> {
  // Define variables to store user input
  String feedback = '';
  double rating = 0.0;

  // Function to submit feedback
  void submitFeedback() {
    // Implement your logic to submit feedback here
    // You can send the feedback and rating to a server or store it locally
    // Display a confirmation message or navigate to another screen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'We value your feedback!',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Rate your experience:',
              style: TextStyle(fontSize: 16.0),
            ),
            Slider(
              value: rating,
              onChanged: (newRating) {
                setState(() {
                  rating = newRating;
                });
              },
              min: 0.0,
              max: 5.0,
              divisions: 5,
              label: rating.toString(),
            ),
            Text('Rating: $rating'),
            SizedBox(height: 20.0),
            Text(
              'Tell us more about your experience:',
              style: TextStyle(fontSize: 16.0),
            ),
            TextFormField(
              maxLines: 4,
              onChanged: (value) {
                setState(() {
                  feedback = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Enter your feedback here...',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: submitFeedback,
              child: Text('Submit Feedback'),
            ),
          ],
        ),
      ),
    );
  }
}


