import 'package:flutter/material.dart';
class ProfileCard extends StatelessWidget {
   const ProfileCard({Key? key, required this.imgSrc}) : super(key: key);
  final String imgSrc;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.network(imgSrc,fit: BoxFit.cover,),
        ),
      ],
    );
  }
}


