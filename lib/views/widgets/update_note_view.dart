import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class UpdateNoteCard extends StatelessWidget {
  const UpdateNoteCard({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Scaffold(
          backgroundColor: color,
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                CustomAppBar(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  title: 'Edit Note',
                  icon: CupertinoIcons.check_mark_circled_solid,
                ),
                const SizedBox(height: 20),
                const CustomTextField(
                  text: 'Title',
                  colorFocusSide: Colors.white,
                ),
                const SizedBox(height: 20),
                const CustomTextField(
                  text: 'description',
                  colorFocusSide: Colors.white,
                  maxLines: 3,
                ),
              ],
            ),
          )),
    );
  }
}
