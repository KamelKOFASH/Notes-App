import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/edit_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key, required this.note, required this.color})
      : super(key: key);

  final NoteModel note;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.withOpacity(0.5),
      body: EditNoteViewBody(
        note: note,
      ),
    );
  }
}
