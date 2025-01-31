import 'package:flutter/material.dart';
import 'appplications.dart';
import 'create_event_page.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  List<String> events = ["Event 1", "Event 2", "Event 3", "Event 4"]; // Sample list

  void _addEvent(String eventName) {
    setState(() {
      events.add(eventName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Events'),
      ),
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(events[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ApplicationsPage(eventName: events[index]),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CreateEventPage(addEventCallback: _addEvent),
            ),
          );
        },
        child: const Icon(Icons.add),
        tooltip: 'Create New Event',
      ),
    );
  }
}
