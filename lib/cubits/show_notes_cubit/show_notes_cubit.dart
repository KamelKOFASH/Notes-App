import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'show_notes_state.dart';

class ShowNotesCubit extends Cubit<ShowNotesState> {
  ShowNotesCubit() : super(ShowNotesInitial());

  void getNotes() async {
    emit(ShowNotesLoading());
    try {
      final box = await Hive.openBox<NoteModel>(kNotesBox);
      final notes = box.values.toList();

      emit(ShowNotesSuccess());
    } on Exception catch (e) {
      emit(ShowNotesFailed(e.toString()));
    }
  }
}
