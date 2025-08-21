import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const EditNoteView();
            },
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
              child: ListTile(
                title: Text(
                  note.title,
                  style: TextStyle(color: kPrimaryColor, fontSize: 28),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    note.subtitle,
                    style: TextStyle(
                      color: kPrimaryColor.withAlpha(200),
                      fontSize: 18,
                    ),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    note.delete();
                  },
                  icon: Icon(Icons.delete, color: kPrimaryColor, size: 34),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 28, bottom: 24),
              child: Text(
                note.date,
                style: TextStyle(
                  fontSize: 18,
                  color: kPrimaryColor.withAlpha(200),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
