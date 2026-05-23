import 'package:flutter/material.dart';
import 'package:journal_entry/models/journal_entry.dart';
class JournalEntryCard extends StatelessWidget {
  final JournalEntry entry;
  const JournalEntryCard({super.key,required this.entry});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              entry.title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            SizedBox(height: 8),
            Text(entry.content, style: const TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text("${entry.date.day}/${entry.date.month}/${entry.date.year}",
                style: const TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
