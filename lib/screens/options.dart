import 'package:flutter/material.dart';

class OptionsScreen extends StatelessWidget {
  const OptionsScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Align(
          alignment: Alignment.center,
          child:
          Icon(
            Icons.edit_note_sharp,
            size: 300,
          ),
        ),
    );
  }

}
