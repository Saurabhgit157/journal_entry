import 'package:flutter/material.dart';

class JournalEntryCard extends StatelessWidget {
  const JournalEntryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Title",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            SizedBox(height: 8),
            Text("Content", style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text("03/02/2026", style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
