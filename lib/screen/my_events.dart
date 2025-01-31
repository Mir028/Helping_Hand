import 'package:flutter/material.dart';
import 'events_details_organizer.dart'; // Import the event details page

class MyEventsPage extends StatelessWidget {
  const MyEventsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Sample list of events
    final List<Map<String, String>> events = [
      {'title': 'Charity Run', 'date': 'March 10, 2025', 'location': 'City Park'},
      {'title': 'Beach Cleanup', 'date': 'April 5, 2025', 'location': 'Sunset Beach'},
      {'title': 'Food Drive', 'date': 'May 15, 2025', 'location': 'Community Center'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Events'),
      ),
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(events[index]['title']!),
            subtitle: Text('${events[index]['date']} - ${events[index]['location']}'),
            trailing: IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EventDetailsPageOrganizer(event: events[index]),
                  ),
                );
              },
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EventDetailsPageOrganizer(event: events[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}