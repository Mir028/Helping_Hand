import 'package:flutter/material.dart';
import '../widget/navbar_organizer.dart';
import 'appplications.dart';
import 'event_page.dart' as eventPage;
import 'my_events.dart';
import 'profile_oranization.dart' as profilePage;
import 'create_event_page.dart';

class OrganizerHomePage extends StatefulWidget {
  const OrganizerHomePage({Key? key}) : super(key: key);

  @override
  State<OrganizerHomePage> createState() => _OrganizerHomePageState();
}

class _OrganizerHomePageState extends State<OrganizerHomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = [
    OrganizerHomeContent(),
    MyEventsPage(),
    ApplicationsPage(eventName: ''),
    profilePage.ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithNavBar(
      selectedIndex: _selectedIndex,
      onItemTapped: _onItemTapped,
      pages: _pages,
    );
  }
}

class OrganizerHomeContent extends StatelessWidget {
  const OrganizerHomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Quick Actions',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => eventPage.EventsPage()),
                  );
                },
                icon: const Icon(Icons.event),
                label: const Text('View Events'),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ApplicationsPage(eventName: '')),
                  );
                },
                icon: const Icon(Icons.mail),
                label: const Text('View Applications'),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreateEventPage(addEventCallback: (String eventName) {})),
                  );
                },
                child: const Text('Create New Event'),
              ),
              const SizedBox(width: 16),
              ElevatedButton(
                onPressed: () {
                  // Add logout logic
                },
                child: const Text('Log Out'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}