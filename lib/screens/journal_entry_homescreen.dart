import 'package:flutter/material.dart';
import 'package:journal_entry/models/journal_entry.dart';
import 'package:journal_entry/widgets/add_entry_form.dart';
import 'package:journal_entry/widgets/journal_entry_card.dart';

class JournalEntryHomeScreen extends StatefulWidget {
  const JournalEntryHomeScreen({super.key});

  @override
  State<JournalEntryHomeScreen> createState() => _JournalEntryHomeScreenState();
}

class _JournalEntryHomeScreenState extends State<JournalEntryHomeScreen> {
  final List<JournalEntry> _entries = [];
  void _addNewEntry(String title, String content){
    setState(() {
      _entries.add(JournalEntry(
        id: DateTime.now().toString(),
        title: title,
        content: content,
        date: DateTime.now(),

        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 241, 202, 85),
        title: Text(
          "My Daily Entry",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: _entries.length,
        itemBuilder: (context, index) {
          return JournalEntryCard();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            //builder is a parameter that expects a function.
            //AddEntryForm()Creates widget object.
            builder:
            (context) => AddEntryForm(
              onAdd: _addNewEntry,
            ),
                


          );
        },
        backgroundColor: Colors.amber,
        child: Icon(Icons.add, color: Colors.black),
      ),
    );
  }
}
