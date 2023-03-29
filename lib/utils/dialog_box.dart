import 'package:flutter/material.dart';
import 'package:todo/utils/my_button.dart';

//ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  DialogBox(
      {Key? key,
      required this.controller,
      required this.onSave,
      required this.onCancel})
      : super(key: key);

  final TextEditingController controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.orange[50],
      content: SizedBox(
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //get Task
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6)),
                  hintText: "\"Enter new task\""),
              keyboardType: TextInputType.text,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(name: 'Cancel', onPressed: onCancel),
                const SizedBox(width: 8),
                MyButton(name: 'Save', onPressed: onSave),
              ],
            )
          ],
        ),
      ),
    );
  }
}
