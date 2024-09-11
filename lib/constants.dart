import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
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

void showCustomSnackBar(BuildContext context, {required String message, ContentType contentType = ContentType.success}) {
  final snackBar = SnackBar(
    elevation: 0,
    behavior: SnackBarBehavior.fixed,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: 'Yummy!',
      message: message,
      contentType: contentType,
    ),
  );

  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(snackBar);
  Navigator.pop(context);
}

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
