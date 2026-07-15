import 'package:flutter/material.dart';
import '../widgets/aboutSection_widget.dart';
import '../widgets/detailText&edit_Button.dart';
import '../widgets/student_detail_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    ///main root of screen
    return Scaffold(
      ///app bar
      appBar: AppBar(
        title: const Text('Student Profile'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),

      ///body of screen
      body: Stack(
        children: [

          ///custom gradient
          SizedBox.expand(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration:const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.blue,
                    Colors.black87,
                    Colors.white,
                  ],
                  stops: [0.1,2.0,1.0]
                ),
              ),
            )
          ),
          ListView(
            children: [

             const SizedBox(height: 20,),

              ///circle photo
              Column(
                spacing: 10,
                children: [
                  const CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('assets/images/Profile.jpeg'),
                    ),
                ],
              ),

              const SizedBox(height: 20,),

              ///student detail text and edit button
              const EditButtonAndText(),
              ///student details
              const StudentDetail(name: 'Full Name', fieldName: 'AHMIR SHAFIQUE',),
              const StudentDetail(name: 'University Name', fieldName: 'University of Gujrat',),
              const StudentDetail(name: 'Department Name', fieldName: 'Information Technology',),
              const StudentDetail(name: 'Semester', fieldName: '7th',),
              const StudentDetail(name: 'Email Address', fieldName: 'ahmirrana306@gmail.com',),
              const StudentDetail(name: 'phone #', fieldName: '+923095342344',),
              ///about section with separate widget
              const AboutSectionWidget(name: 'About Me section (2–3 lines)', string: 'The startup for startups.',)
            ],
          ),
        ],
      ),
    );
  }
}
