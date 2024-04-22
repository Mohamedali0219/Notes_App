import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key, this.maxLines = 1, this.hintText = "", this.onSaved});
  final int maxLines;
  final String hintText;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty == true) {
          return '$hintText cannot be empty';
        }
        return null;
      },
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
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: color),
    );
  }
}
