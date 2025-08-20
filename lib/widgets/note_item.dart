import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
            child: ListTile(
              title: Text(
                'Flutter Notes',
                style: TextStyle(color: kPrimaryColor, fontSize: 28),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  'You need to remember what cubit is and does.',
                  style: TextStyle(
                    color: kPrimaryColor.withAlpha(200),
                    fontSize: 18,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete, color: kPrimaryColor, size: 34),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 28, bottom: 24),
            child: Text(
              'August 21, 2025',
              style: TextStyle(
                fontSize: 18,
                color: kPrimaryColor.withAlpha(200),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
