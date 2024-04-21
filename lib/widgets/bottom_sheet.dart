import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_elevated_buttom.dart';
import 'package:notes_app/widgets/custom_text_form_field.dart';

class BottomSheetBody extends StatelessWidget {
  const BottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const CustomTextFormField(
              hintText: 'Note Title',
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextFormField(
              hintText: 'Note Content',
              maxLines: 5,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomElevatedButtom(
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
