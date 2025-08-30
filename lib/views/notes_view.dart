import 'package:flutter/material.dart';
// import 'package:notesapp/constants.dart';
import 'package:notesapp/views/widgets/add_note_bottom_sheet.dart';

import 'widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              });
        },
        backgroundColor: Colors.lightBlueAccent[200],
        //backgroundColor: Colors.amberAccent[400],
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
