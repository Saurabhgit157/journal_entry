import 'package:flutter/material.dart';
import 'package:journal_entry/app.dart';

class JournalEntryHomeScreen extends StatefulWidget {
  const JournalEntryHomeScreen({super.key});

  @override
  State<JournalEntryHomeScreen> createState() => _JournalEntryHomeScreenState();
}

class _JournalEntryHomeScreenState extends State<JournalEntryHomeScreen>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 241, 202, 85),
        title: Text("My Daily Entry"),
      ),
    )
  }

  
  

}
