import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'show_notes_state.dart';

class ShowNotesCubit extends Cubit<ShowNotesState> {
  ShowNotesCubit() : super(ShowNotesInitial());

  void getNotes() async {
    try {
      var box = Hive.box<NoteModel>(kNotesBox);
      emit(ShowNotesSuccess(box.values.toList()));
    } on Exception catch (e) {
      emit(ShowNotesFailed(e.toString()));
    }
  }
}
