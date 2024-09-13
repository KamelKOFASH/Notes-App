part of 'show_notes_cubit.dart';

@immutable
sealed class ShowNotesState {}

final class ShowNotesInitial extends ShowNotesState {}

final class ShowNotesLoading extends ShowNotesState {}

final class ShowNotesSuccess extends ShowNotesState {
  final List<NoteModel> notes;

  ShowNotesSuccess(this.notes);
}

final class ShowNotesFailed extends ShowNotesState {
  final String error;

  ShowNotesFailed(this.error);
}
