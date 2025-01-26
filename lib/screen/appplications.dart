import 'package:flutter/material.dart';

class ApplicationsPage extends StatelessWidget {
  final String eventName;

  const ApplicationsPage({Key? key, required this.eventName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<String> applicants = [
      "John Doe",
      "Jane Smith",
      "Alice Johnson",
      "Bob Brown",
      "Charlie Davis"
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('$eventName Applications'),
      ),
      body: applicants.isNotEmpty
          ? ListView.builder(
        itemCount: applicants.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(applicants[index]),
          );
        },
      )
          : const Center(
        child: Text(
          'No applications yet for this event.',
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      ),
    );
  }
}
