import 'package:flutter/material.dart';
import 'package:self_intro_jalal/display_intro.dart';

class SelfIntro extends StatefulWidget {

  const SelfIntro({super.key});

  @override
  State<SelfIntro> createState() => _SelfIntroState();
}

class _SelfIntroState extends State<SelfIntro> {
  TextEditingController selfIntro = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Self Introuction',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: selfIntro,
                maxLines: 10,
                minLines: 1,
                style: TextStyle(
                  fontSize: 20,
                ),
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DisplayIntro(selfIntro: selfIntro.text)
                  ));
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
