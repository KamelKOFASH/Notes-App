import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/widgets/custom_note_card.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 12,
          itemBuilder: (context, index) {
            return NoteCard(
              randomColor: cardColors[index % cardColors.length],
              index: index,
            );
          },
        ),
      ),
    );
  }
}
