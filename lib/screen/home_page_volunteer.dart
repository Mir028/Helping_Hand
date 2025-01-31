import 'package:flutter/material.dart';
import 'package:helping_hand/screen/upcoming_events.dart';
import 'package:helping_hand/screen/volunteer_event_page.dart';
import 'package:helping_hand/screen/volunteer_profile_page.dart';

import '../widget/navbar_volunteer.dart';
import 'applied_events_volunteer.dart';

class VolunteerHomePage extends StatefulWidget {
  const VolunteerHomePage({Key? key}) : super(key: key);

  @override
  State<VolunteerHomePage> createState() => _VolunteerHomePageState();
}

class _VolunteerHomePageState extends State<VolunteerHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          // Centered Home Page Content
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  width: 350, // Adjust width for better centering
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'lib/assets/images/clean.png',
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Join Our Community Clean-Up!',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Be part of making a difference in our local park.',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Wrap the buttons in Expanded or Flexible to avoid overflow
                          Expanded(
                            child: ElevatedButton.icon(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const UpcomingEventsPage()),
                                );
                              },
                              icon: const Icon(Icons.calendar_today),
                              label: const Text('Upcoming Events'),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: ElevatedButton.icon(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const AppliedEventsPage()), // Navigate to Applied Events
                                );
                              },
                              icon: const Icon(Icons.check_circle),
                              label: const Text('Applied Events'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const VolunteerEventPage(),
          const VolunteerProfilePage(),
        ],
      ),
      bottomNavigationBar: VolunteerNavBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
