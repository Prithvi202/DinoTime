import 'package:flutter/material.dart';

import 'ConnectAndShare.dart';
import 'TimeLine.dart';

class Ceratosaurus extends StatelessWidget {
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
                          image: AssetImage("assets/images/Ceratosaurus.png"),
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
How it moved: on 2 legs

Type of dinosaur: large theropod

Length: 6.0m
Weight: 970kg

When it lived: Late Jurassic, 153-148 million years ago

Found in:Portugal, USA

Ceratosaurus means 'horned lizard'. The dinosaur was given this name because it had a row of sharp horns on its head and a row of small, bony pieces of armour running along its back. It is not known what this body armour was for, but it could have been for protection from attack by other Ceratosaurus or larger theropods such as Allosaurus and Torvosaurus.

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
