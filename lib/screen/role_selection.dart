import 'package:flutter/material.dart';
import '../constent/AppString.dart';
import '../domain/role.dart';
import '../widget/role_card.dart';

class RoleSelectionScreen extends StatelessWidget {
  final Function(UserRole) onRoleSelected;

  const RoleSelectionScreen({Key? key, required this.onRoleSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.selectRole),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppStrings.chooseRole,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 20),
            RoleCard(
              title: AppStrings.volunteer,
              description: AppStrings.volunteerDescription,
              icon: Icons.volunteer_activism,
              onTap: () => onRoleSelected(UserRole.Volunteer),
            ),
            const SizedBox(height: 20),
            RoleCard(
              title: AppStrings.organizer,
              description: AppStrings.organizerDescription,
              icon: Icons.people,
              onTap: () => onRoleSelected(UserRole.Organizer),
            ),
          ],
        ),
      ),
    );
  }
}
