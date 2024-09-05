import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/update_note_view.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key, required this.randomColor, required this.index});
  final Color randomColor;
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => UpdateNoteCard(
                    color: cardColors[index % cardColors.length],
                  )),
        );
      },
      child: Card(
        elevation: 10,
        shadowColor: Colors.black,
        margin: const EdgeInsets.all(6),
        color: randomColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
              title: const Text(
                'Note Title',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  'description',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.check_mark_circled,
                  color: Colors.black,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.delete,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'May 16, 2024',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
