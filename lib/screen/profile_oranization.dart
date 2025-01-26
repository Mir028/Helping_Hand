import 'package:flutter/material.dart';
 // Adjust the path if necessary

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60.0,
              backgroundColor: Colors.grey[300],
              backgroundImage: const NetworkImage('https://via.placeholder.com/150'),
            ),
            const SizedBox(height: 20),
            const Text('John Doe', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text('Event Organizer at XYZ Organization', style: TextStyle(fontSize: 16, color: Colors.grey)),
            const SizedBox(height: 10),
            const Text('Email: johndoe@example.com', style: TextStyle(fontSize: 16, color: Colors.grey)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Edit profile action
              },
              child: const Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
