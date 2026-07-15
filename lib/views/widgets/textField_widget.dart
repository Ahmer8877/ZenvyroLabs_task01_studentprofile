import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String _name;
  final String _hintText;
  const TextFieldWidget({super.key, required this._name, required this._hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(_name),
          ),

          Container(
            height: 50,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 12),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(10),
            ),

            child: TextField(
              decoration: InputDecoration(
                hint: Text(_hintText,style: const TextStyle(color: CupertinoColors.inactiveGray),),
                  border: InputBorder.none
              ),
            ),
          ),
        ],
      ),
    )
    ;
  }
}
