import 'package:flutter/material.dart';
import 'package:zenvyrolabs01_studentprofile/views/widgets/doneButtonAndText_widget.dart';
import 'package:zenvyrolabs01_studentprofile/views/widgets/textField_widget.dart';

class EditScreen extends StatelessWidget {

  const EditScreen({super.key,});

  // final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    ///main root of screen
    return Scaffold(
      ///app bar
      appBar: AppBar(
        title:const Text('Edit Detail'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),

      ///body of screen
      body: Stack(
        children: [

          ///gradient
          SizedBox.expand(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.blue,
                      Colors.black87
                    ],
                  ),
                ),
              )
          ),

          ListView(
            children: [

              ///text and done button
              const DoneButtonAndTextWidget(),

              ///student detail edit in text field
              const TextFieldWidget(name: 'Full Name', hintText: 'eg:Ahmer...',),
              const TextFieldWidget(name: 'University Name', hintText: 'eg:University of Gujrat',),
              const TextFieldWidget(name: 'Department Name', hintText: 'eg:Information technology',),
              const TextFieldWidget(name: 'Semester', hintText: '7th',),
              const TextFieldWidget(name: 'Email Address', hintText: 'eg:example@gmail.com',),
              const TextFieldWidget(name: 'Phone#', hintText: '+9230000000...',),
              const TextFieldWidget(name: 'About Me section (2–3 lines)', hintText: 'About detail...',),
            ],
          ),
        ],
      ),
    );
  }
}
