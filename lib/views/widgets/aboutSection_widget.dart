import 'package:flutter/material.dart';

class AboutSectionWidget extends StatelessWidget {
  final String _name;
  final String _string;
  const AboutSectionWidget({super.key, required this._name, required this._string});

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
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(10),
            ),
            child: Text(_string,maxLines: 3,)
        )
      ],
    );
  }
}
