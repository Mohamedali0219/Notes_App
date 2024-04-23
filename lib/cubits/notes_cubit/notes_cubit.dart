import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/notes_cubit/notes_state.dart';
import 'package:notes_app/models/note_model.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchNotes() {
    emit(NotesLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);
      List<NoteModel> notes = noteBox.values.toList();
      emit(NotesLoaded(notes));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
