import 'package:flutter/material.dart';
import 'appplications.dart';
import 'event_page.dart';
import 'home_page_volunteer.dart';
import 'create_event_page.dart';
import 'event_page.dart' as eventPage;
import 'profile_oranization.dart' as profilePage;


// Main Page for Organizer
class OrganizerHomePage extends StatefulWidget {
  const OrganizerHomePage({Key? key}) : super(key: key);

  @override
  State<OrganizerHomePage> createState() => _OrganizerHomePageState();
}

class _OrganizerHomePageState extends State<OrganizerHomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = [
    OrganizerHomeContent(),
    eventPage.EventsPage(),
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome, Organizer!'),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event, color: Colors.black),
            label: 'View Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail, color: Colors.black),
            label: 'Applications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
      ),
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
                    MaterialPageRoute(builder: (context) => EventsPage()),
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
                    MaterialPageRoute(builder: (context) => CreateEventPage(addEventCallback: (String eventName) { })),
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
