

import 'package:flutter/material.dart';
import 'package:self_intro_jalal/self_intro_screen.dart';

class DisplayIntro extends StatelessWidget {

  String selfIntro;
  DisplayIntro({required this.selfIntro});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Personal Information',
        style: TextStyle(
          color: Colors.black,
        ),),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SingleChildScrollView(
                child: Text(
                  '${selfIntro}',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
