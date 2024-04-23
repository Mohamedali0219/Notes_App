import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomElevatedButtom extends StatelessWidget {
  const CustomElevatedButtom(
      {super.key, required this.onPressed, this.isLoading = false});
  final Function()? onPressed;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: kprimaryColor,
          foregroundColor: Colors.white,
          fixedSize: const Size(400, 60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
      child: isLoading
          ? const CircularProgressIndicator()
          : const Text(
              'Add Note',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
    );
  }
}
