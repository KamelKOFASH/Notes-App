import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/widgets/circle_color_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: AddNoteForm(),
    );
  }
}

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
          ElevatedButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                // * Navigator.pop(context, {'title': title, 'description': description});
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
            child: const Text('Add Note'),
          ),
        ],
      ),
    );
  }
}
