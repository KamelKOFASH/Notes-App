import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/circle_color_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        const Text(
          'Add Note',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        const CustomTextField(
          text: 'Title',
        ),
        const SizedBox(height: 20),
        const CustomTextField(
          text: 'description',
          maxLines: 3,
        ),
        const SizedBox(height: 20),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Pick a Color'),
            CircleColorButton(
              color: Colors.orangeAccent,
            ),
            CircleColorButton(
              color: Colors.redAccent,
            ),
            CircleColorButton(
              color: Colors.blueAccent,
            ),
            CircleColorButton(
              color: Colors.greenAccent,
            ),
            CircleColorButton(
              color: Colors.purpleAccent,
            ),
          ],
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text('Add Note'),
        ),
      ],
    );
  }
}
