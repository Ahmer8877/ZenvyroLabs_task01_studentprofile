import 'package:flutter/material.dart';

class DoneButtonAndTextWidget extends StatelessWidget {
  const DoneButtonAndTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 15,left: 10),
        child:Row(
          spacing: 120,
          children: [
            const Text('Edit Student Detail:',style: TextStyle(fontSize: 20)
            ),

            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.blue
                ),
                child: const Icon(Icons.done),
              ),
            )
          ],
        )
    );
  }
}
