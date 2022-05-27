import 'dart:ui';

import 'package:flutter/material.dart';

class ImageFilteredList extends StatelessWidget {
  const ImageFilteredList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Filter'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: SizedBox(
              height: 100,
              child: Card(
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ImageFiltered(
                        imageFilter: ImageFilter.blur(
                          sigmaX: 25,
                          sigmaY: 25,
                        ),
                        child: Image.asset(
                          'assets/background.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Center(
                      child: Text(
                        'Text',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 8);
        },
        itemCount: 40,
      ),
    );
  }
}
