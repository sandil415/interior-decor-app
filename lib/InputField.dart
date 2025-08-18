import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String field;
  final String label;

  const InputField({super.key, required this.field, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(field, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
        SizedBox(height: 6),
        TextField(
          decoration: InputDecoration(
            labelText: label,
            filled: true, 
            fillColor: Color(0xFFFAF0E6),
            contentPadding: EdgeInsets.only(left: 18, top: 4, bottom: 4),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(22)),
            )
          )
        )
      ]
    );
  }
}