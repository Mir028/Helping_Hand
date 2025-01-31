import 'package:flutter/material.dart';

class AppliedEventsPage extends StatelessWidget {
  const AppliedEventsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Sample applied events data. You can replace it with dynamic data.
    List<Map<String, String>> appliedEvents = [
      {'title': 'Clean the Beach', 'status': 'Applied'},
      {'title': 'Park Clean-Up', 'status': 'Confirmed'},
      {'title': 'Community Tree Planting', 'status': 'Pending'},
    ];

    // Function to determine icon and color based on status
    Widget _getStatusIcon(String status) {
      switch (status) {
        case 'Confirmed':
          return Icon(Icons.check_circle, color: Colors.green); // Accepted events (Confirmed)
        case 'Pending':
          return Icon(Icons.access_time, color: Colors.yellow); // Pending events
        case 'Rejected':
          return Icon(Icons.cancel, color: Colors.red); // Rejected events
        default:
          return Icon(Icons.help, color: Colors.grey); // Default icon for unrecognized statuses
      }
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Applied Events')),
      body: ListView.builder(
        itemCount: appliedEvents.length,
        itemBuilder: (context, index) {
          String status = appliedEvents[index]['status']!;
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    appliedEvents[index]['title']!,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        'Status: $status',
                        style: const TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      const SizedBox(width: 10),
                      _getStatusIcon(status), // Add the status icon with color
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
