import 'package:flutter/material.dart';

class EditEventPage extends StatefulWidget {
  final Map<String, String> event;

  const EditEventPage({Key? key, required this.event}) : super(key: key);

  @override
  _EditEventPageState createState() => _EditEventPageState();
}

class _EditEventPageState extends State<EditEventPage> {
  late TextEditingController titleController;
  late TextEditingController dateController;
  late TextEditingController locationController;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController(text: widget.event['title']);
    dateController = TextEditingController(text: widget.event['date']);
    locationController = TextEditingController(text: widget.event['location']);
  }

  @override
  void dispose() {
    titleController.dispose();
    dateController.dispose();
    locationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Event'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: 'Event Title'),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: dateController,
              decoration: const InputDecoration(labelText: 'Date'),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: locationController,
              decoration: const InputDecoration(labelText: 'Location'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Save the updated event details
                widget.event['title'] = titleController.text;
                widget.event['date'] = dateController.text;
                widget.event['location'] = locationController.text;

                Navigator.pop(context);
              },
              child: const Text('Save Changes'),
            ),
          ],
        ),
      ),
    );
  }
}
