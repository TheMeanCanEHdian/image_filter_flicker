import 'dart:ui';

import 'package:flutter/material.dart';

class BackdropFilterList extends StatelessWidget {
  const BackdropFilterList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Backdrop Filter'),
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
                      child: Image.asset(
                        'assets/background.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned.fill(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 25,
                          sigmaY: 25,
                        ),
                        child: const Center(
                          child: Text(
                            'Text',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
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
