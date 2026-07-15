import 'package:flutter/material.dart';
import '../screens/edit_screen.dart';

class EditButtonAndText extends StatelessWidget {
  const EditButtonAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            const Text('Student Detail:',style: TextStyle(fontSize:20)),

            Spacer(),
            ///customize edit button
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>EditScreen()));
              },
              child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.blue
                ),
                child: const Icon(Icons.edit),
              ),
            )
          ],
        )
    );
  }
}
