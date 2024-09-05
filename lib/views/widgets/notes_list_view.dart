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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => UpdateNoteCard(
                            color: cardColors[index % cardColors.length],
                          )),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class UpdateNoteCard extends StatelessWidget {
  const UpdateNoteCard({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
