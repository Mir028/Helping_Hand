import 'package:flutter/material.dart';

class ApplicantDetailsPage extends StatelessWidget {
  final Map<String, String> applicant;

  const ApplicantDetailsPage({Key? key, required this.applicant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${applicant['name']} Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name: ${applicant['name']} ${applicant['surname']}',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text('Age: ${applicant['age']}'),
            const SizedBox(height: 10),
            Text('Main Role: ${applicant['main']}'),
            const SizedBox(height: 10),
            Text('Applied At: ${applicant['appliedAt']}'),
          ],
        ),
      ),
    );
  }
}
