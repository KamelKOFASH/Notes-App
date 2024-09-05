import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add_note_bottom_sheet.dart';

const kPrimaryColor = Colors.blueAccent;
const kNotesBox = 'notes';
const List<Color> cardColors = [
  Colors.orangeAccent,
  Colors.redAccent,
  Colors.blueAccent,
  Color.fromARGB(250, 60, 130, 60),
  Colors.purpleAccent,
];

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
