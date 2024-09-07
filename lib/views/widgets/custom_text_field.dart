import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.text,
    this.maxLines = 1,
    this.colorFocusSide = kPrimaryColor,
    this.colorEnabledSide = Colors.black,
    this.onSaved,
  });
  final String text;
  final int maxLines;
  final Color colorFocusSide;
  final Color colorEnabledSide;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: TextFormField(
        onSaved: onSaved,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
        maxLines: maxLines,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelStyle: TextStyle(color: colorFocusSide),
          labelText: text,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colorFocusSide),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colorEnabledSide),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
        ),
        cursorColor: colorFocusSide,
      ),
    );
  }
}
