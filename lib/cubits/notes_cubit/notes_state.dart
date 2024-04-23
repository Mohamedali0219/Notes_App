import 'package:notes_app/models/note_model.dart';

abstract class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLoading extends NotesState {}

final class NotesLoaded extends NotesState {
  final List<NoteModel> notes;
  NotesLoaded(this.notes);
}

final class NotesFailure extends NotesState {
  final String errMessage;
  NotesFailure(this.errMessage);
}
