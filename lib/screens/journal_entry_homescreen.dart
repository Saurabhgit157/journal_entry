import 'package:flutter/material.dart';
import 'package:journal_entry/widgets/journal_entry_card.dart';

class JournalEntryHomeScreen extends StatefulWidget {
  const JournalEntryHomeScreen({super.key});

  @override
  State<JournalEntryHomeScreen> createState() => _JournalEntryHomeScreenState();
}

class _JournalEntryHomeScreenState extends State<JournalEntryHomeScreen> {
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
        itemCount: 6,
        itemBuilder: (context , index)  
        {
          return JournalEntryCard();
        }   
      ),
    );
  }
}
