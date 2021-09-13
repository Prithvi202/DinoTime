import 'package:flutter/material.dart';

import 'ConnectAndShare.dart';
import 'TimeLine.dart';

class Ankylosaurus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey,
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
                          image: AssetImage("assets/images/Ankylosaurus.png"),
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
Teeth: grinding teeth with a horny beak at the front

Food: plant material

How it moved: on 4 legs

Type of dinosaur: armoured dinosaur

Length: 7.0m
Weight: 4000kg

When it lived: Late Cretaceous, 74-67 million years ago

Found in: Canada, USA

One of the largest armoured dinosaurus, Ankylosaurus had a wide, heavily armoured skull and a large tail club. It had a large gut space for digesting plant material.


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
