import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/custom_note_card.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const CustomAppBar(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 12,
              itemBuilder: (context, index) {
                return NoteCard(
                  randomColor: cardColors[index % cardColors.length],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
