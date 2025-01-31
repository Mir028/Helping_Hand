import 'package:flutter/material.dart';

class UpcomingEventsPage extends StatelessWidget {
  const UpcomingEventsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Upcoming Events')),
      body: SingleChildScrollView( // ✅ Fix overflow issue
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildEventItem(
              context,
              'Clean the Beach',
              '12:00 PM, 15th Feb',
              'Join us for a beach clean-up event to help keep our shores clean!',
            ),
            _buildEventItem(
              context,
              'Park Clean-Up',
              '9:00 AM, 22nd Feb',
              'Help us restore the beauty of our local park by cleaning up waste and planting greenery.',
            ),
            _buildEventItem(
              context,
              'Community Tree Planting',
              '11:00 AM, 5th Mar',
              'Be a part of our tree-planting campaign to make the environment greener!',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEventItem(BuildContext context, String title, String date, String description) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            Text(date, style: const TextStyle(fontSize: 16, color: Colors.grey)),
            const SizedBox(height: 15),
            Text(description, style: const TextStyle(fontSize: 14)),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EventDetailsPage(title: title, date: date, description: description),
                    ),
                  );
                },
                child: const Text('View Details'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EventDetailsPage extends StatelessWidget {
  final String title;
  final String date;
  final String description;

  const EventDetailsPage({Key? key, required this.title, required this.date, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SingleChildScrollView(  // ✅ Fixes overflow issue
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text(date, style: const TextStyle(fontSize: 18, color: Colors.grey)),
            const SizedBox(height: 20),
            Text(description, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
