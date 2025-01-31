import 'package:flutter/material.dart';
import 'applicant_details.dart';

class ApplicationsPage extends StatelessWidget {
  final String eventName;

  const ApplicationsPage({Key? key, required this.eventName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Updated list with detailed information for each applicant
    final List<Map<String, String>> applicants = [
      {
        'name': 'John Doe',
        'age': '25',
        'surname': 'Doe',
        'main': 'Volunteer',
        'appliedAt': 'Charity Run',
      },
      {
        'name': 'Jane Smith',
        'age': '28',
        'surname': 'Smith',
        'main': 'Organizer',
        'appliedAt': 'Beach Cleanup',
      },
      {
        'name': 'Alice Johnson',
        'age': '22',
        'surname': 'Johnson',
        'main': 'Volunteer',
        'appliedAt': 'Food Drive',
      },
      {
        'name': 'Bob Brown',
        'age': '30',
        'surname': 'Brown',
        'main': 'Volunteer',
        'appliedAt': 'Charity Run',
      },
      {
        'name': 'Charlie Davis',
        'age': '26',
        'surname': 'Davis',
        'main': 'Organizer',
        'appliedAt': 'Beach Cleanup',
      },
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
            title: Text(applicants[index]['name']!),
            subtitle: Text('Age: ${applicants[index]['age']}'),
            onTap: () {
              // Navigate to applicant details page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ApplicantDetailsPage(
                    applicant: applicants[index],
                  ),
                ),
              );
            },
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
