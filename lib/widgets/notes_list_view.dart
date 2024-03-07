import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesListViewBuilder extends StatelessWidget {
  const NotesListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ListView.builder(itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(
            bottom: 10,
          ),
          child: NotesItem(),
        );
      }),
    );
  }
}
