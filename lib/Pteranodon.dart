import 'package:flutter/material.dart';

import 'ConnectAndShare.dart';
import 'TimeLine.dart';

class Pteranodon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              tooltip: 'About Dinos',
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TimeLine_Page(),
                  ),
                );
              },
            ),
            IconButton(
              tooltip: 'Connect and Share',
              icon: const Icon(Icons.share_outlined),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ConnectAndShareScreen()),
                );
              },
            ),

          ],
        ),
      ),

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/DinoBackground.png"),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.all(20.0),
        child: Expanded(
          child: ListView(
            shrinkWrap: true,
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(130.0),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage("assets/images/Pteranodon.png"),
                        )
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      padding: EdgeInsets.all(30.0),
                      child: Text(
                        '''            
Teeth: dagger-like with serrated edges

Food: Stegosaurus, Diplodocus and others

How it moved: on 2 legs

Type of dinosaur: large theropod

Length: 12.0m
Weight: 2000kg

When it lived: Late Jurassic, 156-144 million years ago

Found in:Portugal, USA

The teeth of Allosaurus were 5-10cm long and curved backwards to prevent prey from escaping.
''',
                        maxLines: 30,
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
