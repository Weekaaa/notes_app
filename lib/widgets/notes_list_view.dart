import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 32),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsetsGeometry.only(bottom: 16),
            child: NoteItem(color: Colors.amber),
          );
        },
      ),
    );
  }
}
