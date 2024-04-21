import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, this.maxLines = 1, this.hintText = ""});
  final int maxLines;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: kprimaryColor,
      maxLines: maxLines,
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 20),
        enabledBorder: textFormFieldBorder(color: Colors.white),
        focusedBorder: textFormFieldBorder(color: kprimaryColor),
      ),
    );
  }

  OutlineInputBorder textFormFieldBorder({required color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color),
    );
  }
}
