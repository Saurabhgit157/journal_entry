import 'package:flutter/material.dart';
import 'package:journal_entry/screens/journal_entry_homescreen.dart';

class JournalEntryApp extends StatelessWidget {
  const JournalEntryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Journal APP',
      debugShowCheckedModeBanner: false,
      home: const JournalEntryHomeScreen(),
    );
  }
}
