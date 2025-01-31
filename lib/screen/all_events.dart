import 'package:flutter/material.dart';

class AllEventsPage extends StatelessWidget {
  const AllEventsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('All Events')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [
            Text('Clean the Beach - 12:00 PM, 15th Feb', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Park Clean-Up - 9:00 AM, 22nd Feb', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Community Tree Planting - 11:00 AM, 5th Mar', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Past Event: Beach Clean-Up - 10:00 AM, 10th Jan', style: TextStyle(fontSize: 18, color: Colors.grey)),
            SizedBox(height: 10),
            Text('Past Event: Park Clean-Up - 9:00 AM, 2nd Jan', style: TextStyle(fontSize: 18, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
