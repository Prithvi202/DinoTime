import 'package:flutter/material.dart';

import 'ConnectAndShare.dart';
import 'TimeLine.dart';

class Brontosaurus extends StatelessWidget {
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
                          image: AssetImage("assets/images/Brontosaurus.png"),
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
Food: plant material

How it moved: on 4 legs

Type of dinosaur: sauropod

Length: 22.0m
Weight: 15t 
When it lived: Late Jurassic, 155-140 million years ago

Found in: Algeria, Portugal, Tanzania, USA

Brontosaurus was a large, long-necked, quadrupedal animal with a long, whip-like tail, and fore limbs that were slightly shorter than its hind limbs
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
