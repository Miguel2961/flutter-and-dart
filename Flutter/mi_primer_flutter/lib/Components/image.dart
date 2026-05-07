import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0tXjMDCp2kL5su_6CIWzKkpMGzH6mCVcsvg&s"),
        Image.asset('assets/images/cubo.png', height: 100)
      ],
    );
  }
}