import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/widgets/custom_note_card.dart';
import 'package:notes_app/views/update_note_view.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  @override

  /// The build method for [NotesListView].
  ///
  /// This method returns a widget that displays a list of [NoteCard]s.
  ///
  /// The [NoteCard]s are arranged in a vertical list, with a padding of 8.0
  /// on the top and bottom, and a bouncing scroll physics.
  ///
  /// The [NoteCard]s are created using the [cardColors] list, and the color
  /// of each [NoteCard] is determined by the index of the [NoteCard] in the
  /// list.
  ///
  /// When a [NoteCard] is tapped, a [MaterialPageRoute] is pushed to the
  /// navigator, which displays an [UpdateNoteCard] with the same color as the
  /// tapped [NoteCard].
  ///
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
