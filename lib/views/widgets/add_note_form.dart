import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/circle_color_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title;
  String? description;
  late bool isLoading;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            'Add Note',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          CustomTextField(
            text: 'Title',
            colorEnabledSide: kPrimaryColor,
            onSaved: (p0) {
              title = p0;
            },
          ),
          const SizedBox(height: 20),
          CustomTextField(
            text: 'description',
            colorEnabledSide: kPrimaryColor,
            maxLines: 3,
            onSaved: (p0) {
              description = p0;
            },
          ),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Pick a Color'),
              CircleColorButton(
                color: Colors.orangeAccent,
              ),
              CircleColorButton(
                color: Colors.redAccent,
              ),
              CircleColorButton(
                color: Colors.blueAccent,
              ),
              CircleColorButton(
                color: Color.fromARGB(250, 60, 130, 60),
              ),
              CircleColorButton(
                color: Colors.purpleAccent,
              ),
            ],
          ),
          const SizedBox(height: 20),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              state is AddNoteLoading ? isLoading = true : isLoading = false;
              return Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      BlocProvider.of<AddNoteCubit>(context).addNote(NoteModel(
                        title: title!,
                        description: description!,
                        date: DateTime.now().toString(),
                        color: Colors.orangeAccent.value,
                      ));
                    } else {
                      setState(() {
                        autovalidateMode = AutovalidateMode.always;
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: isLoading
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(),
                        )
                      : const Text('Add Note'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
