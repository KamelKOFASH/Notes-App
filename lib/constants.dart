import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add_note_bottom_sheet.dart';

List<Color> cardColors = [
  Colors.orangeAccent,
  Colors.redAccent,
  Colors.blueAccent,
  const Color.fromARGB(250, 60, 130, 60),
  Colors.purpleAccent,
];
const Color primaryColor = Colors.blueAccent;

Future<dynamic> showModelSheet(BuildContext context) {
  return showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(40),
        ),
      ),
      context: context,
      builder: (context) {
        return const AddNoteBottomSheet();
      });
}
