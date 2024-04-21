import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_text_form_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          CustomTextFormField(
            hintText: 'title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            hintText: 'content',
            maxLines: 5,
          )
        ],
      ),
    );
  }
}
