import 'package:flutter/material.dart';

class AddEntryForm extends StatelessWidget {
  //creating a callback ftn to close the sheet
  final Function(String title , String content) onAdd ;
  // AddEntryForm is constructor name
  // super.key	send key to parent class
  AddEntryForm({super.key,required this.onAdd});

  //i am creating controller for taking input
  //It is:constructor call which creates object

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();
  @override
  Widget build(BuildContext context)
  {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          TextField(
            controller: _titleController ,
            decoration: InputDecoration(
                //InputDecoration is used to design and customize a TextField.
              labelText : "Title",
            ),


          ),
          SizedBox(height: 16.0),
          TextField(
            controller: _contentController,
            decoration : InputDecoration(
                labelText: "Content",
            ),
          ),
          SizedBox(height: 16.0,),
          ElevatedButton(
            onPressed : (){
              //pasing the controller to onAdd callback ftn
              onAdd(_titleController.text, _contentController.text);
              //Flutter needs context to know where to perform navigation.
              Navigator.pop(context);
            },
            child: Text("Add Entry"),
          )
        ]
      )
    );
  }
  // mermaid
  // graph TD
  // A[User clicks + Button] --> B[HomeScreen calls showModalBottomSheet]
  // B --> C[AddEntryForm Widget is built]
  // C --> D[User types into TextFields]
  // D --> E[User clicks Add Entry]
  // E --> F[Controller captures the String]
  // F --> G[Navigator.pop closes the sheet]

}