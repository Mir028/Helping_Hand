import 'package:flutter/material.dart';
import 'package:helping_hand/screen/RegistrationScreen.dart';
import 'package:helping_hand/screen/home_page_organization.dart';
import 'package:helping_hand/screen/home_page_volunteer.dart';

import 'package:helping_hand/screen/login.dart';
import 'package:helping_hand/screen/registration_screen.dart';

import 'domain/role.dart';

void main() {
  runApp(const VolunteerConnectApp());
}

class VolunteerConnectApp extends StatelessWidget {
  const VolunteerConnectApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Volunteer Connect',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => RoleSelectionScreen(
          onRoleSelected: (role) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => RegistrationScreen(userRole: role),
              ),
            );
          },
        ),
        '/login': (context) => LoginScreen(),
        '/register/volunteer': (context) => RegistrationScreen(userRole: UserRole.Volunteer),
        '/register/organizer': (context) => RegistrationScreen(userRole: UserRole.Organizer),
        '/volunteer/home': (context) => VolunteerHomePage(),
        '/organizer/home': (context) => OrganizerHomePage(),
      },
    );
  }
}
