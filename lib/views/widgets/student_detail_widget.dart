import 'package:flutter/material.dart';

class StudentDetail extends StatelessWidget {
  final String _name;
  final String _fieldName;
  const StudentDetail({super.key, required this._name, required this._fieldName});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Text(_name),
        ),

        Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 12),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10),
            ),
            child: Text(_fieldName)
        )
      ],
    );
  }
}
