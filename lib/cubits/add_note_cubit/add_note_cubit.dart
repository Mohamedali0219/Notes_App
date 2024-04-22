import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  static AddNoteCubit get(context) => BlocProvider.of(context);

  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var noteBox =
          Hive.box<NoteModel>(kNoteBox); //! Box<E> box<E>(String name)
      emit(AddNoteSuccess());
      await noteBox.add(note); //! Box<E> box<E>(String name)
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
