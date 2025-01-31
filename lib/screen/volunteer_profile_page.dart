import 'package:flutter/material.dart';

class VolunteerProfilePage extends StatelessWidget {
  const VolunteerProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center, // Ensures content stays in the center
            children: [
              const CircleAvatar(
                radius: 60.0,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage('https://via.placeholder.com/150'),
              ),
              const SizedBox(height: 20),
              const Text(
                'John Doe',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Volunteer - Local Initiatives',
                style: TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 5),
              const Text(
                'Email: johndoe@example.com',
                style: TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Edit Profile'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
