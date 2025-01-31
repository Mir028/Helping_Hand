import 'package:flutter/material.dart';

import 'edit_details_organizer.dart'; // Import the edit event page

class EventDetailsPageOrganizer extends StatelessWidget {
  final Map<String, String> event;

  const EventDetailsPageOrganizer({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(event['title']!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Date: ${event['date']}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text('Location: ${event['location']}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditEventPage(event: event),
                  ),
                );
              },
              child: const Text('Edit Event'),
            ),
          ],
        ),
      ),
    );
  }
}