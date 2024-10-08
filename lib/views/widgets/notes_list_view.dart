import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import 'note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
        return notes.isEmpty
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'No Notes!',
                      style: TextStyle(color: Colors.white, fontSize: 24.sp),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 10),
                    const Icon(CupertinoIcons.paperclip, color: Colors.white),
                  ],
                ),
              )
            : Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: ListView.builder(
                    itemCount: notes.length,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: NoteItem(
                          note: notes[index],
                        ),
                      );
                    }),
              );
      },
    );
  }
}
