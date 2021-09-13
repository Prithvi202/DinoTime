import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:dino_time/icon_svg/icon_svg.dart';

import 'Allosaurus.dart';
import 'Ankylosaurus.dart';
import 'Brachiosaurus.dart';
import 'Brontosaurus.dart';
import 'Ceratosaurus.dart';
import 'ConnectAndShare.dart';
import 'Elasmosaurus.dart';
import 'Kentrosaurus.dart';
import 'Monolophosaurus.dart';
import 'Plateosaurus.dart';
import 'Pteranodon.dart';
import 'Talarurus.dart';
import 'Titanosaurus.dart';

class TimeLine_Page extends StatefulWidget {
  @override
  _TimeLine_PageState createState() => _TimeLine_PageState();
}

class _TimeLine_PageState extends State<TimeLine_Page> {
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
              icon: const Icon(Icons.workspaces_filled),
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
        child: Center(
          child: new Expanded(
            child: new ListView(
              shrinkWrap: true,
              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      height: 10,
                    ),
                    TimelineTile(
                      alignment: TimelineAlign.center,
                      isFirst: true,
                      indicatorStyle: const IndicatorStyle(
                        width: 20,
                        color: Colors.purple,
                        padding: EdgeInsets.all(20.0),
                      ),
                      startChild: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Allosaurus(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.purple,
                          fixedSize: Size(300, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 8,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: SvgPicture.asset(
                                dino1,
                                height: 50,
                                width: 50,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Allosaurus",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Text(
                              "Type: Carnivorous",
                              style:
                              TextStyle(fontSize: 12, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    TimelineTile(
                      alignment: TimelineAlign.center,
                      indicatorStyle: const IndicatorStyle(
                        width: 20,
                        color: Colors.blueGrey,
                        padding: EdgeInsets.all(20.0),
                      ),
                      endChild: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Ankylosaurus(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blueGrey,
                          fixedSize: Size(300, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 8,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: SvgPicture.asset(
                                dino2,
                                height: 50,
                                width: 50,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Ankylosaurus",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Text(
                              "Type: Herbivorous",
                              style:
                              TextStyle(fontSize: 12, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    TimelineTile(
                      alignment: TimelineAlign.center,
                      indicatorStyle: const IndicatorStyle(
                        width: 20,
                        color: Colors.red,
                        padding: EdgeInsets.all(20.0),
                      ),
                      startChild: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Brachiosaurus(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          fixedSize: Size(300, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 8,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: SvgPicture.asset(
                                dino3,
                                height: 50,
                                width: 50,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Brachiosaurus",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Text(
                              "Type: Herbivorous",
                              style:
                              TextStyle(fontSize: 12, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    TimelineTile(
                      alignment: TimelineAlign.center,
                      indicatorStyle: const IndicatorStyle(
                        width: 20,
                        color: Colors.blue,
                        padding: EdgeInsets.all(20.0),
                      ),
                      endChild: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Brontosaurus (),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          fixedSize: Size(300, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 8,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: SvgPicture.asset(
                                dino4,
                                height: 50,
                                width: 50,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Brontosaurus",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Text(
                              "Type: Herbivorous",
                              style:
                              TextStyle(fontSize: 12, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    TimelineTile(
                      alignment: TimelineAlign.center,
                      indicatorStyle: const IndicatorStyle(
                        width: 20,
                        color: Colors.green,
                        padding: EdgeInsets.all(20.0),
                      ),
                      startChild: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Ceratosaurus(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          fixedSize: Size(300, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 8,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: SvgPicture.asset(
                                dino5,
                                height: 50,
                                width: 50,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Ceratosaurus",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Text(
                              "Type: Carnivorous",
                              style:
                              TextStyle(fontSize: 12, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    TimelineTile(
                      alignment: TimelineAlign.center,
                      indicatorStyle: const IndicatorStyle(
                        width: 20,
                        color: Colors.deepOrangeAccent,
                        padding: EdgeInsets.all(20.0),
                      ),
                      endChild: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Elasmosaurus(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.deepOrangeAccent,
                          fixedSize: Size(300, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 8,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: SvgPicture.asset(
                                dino6,
                                height: 50,
                                width: 50,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Elasmosaurus",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Text(
                              "Type: Carnivorous",
                              style:
                              TextStyle(fontSize: 12, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    TimelineTile(
                      alignment: TimelineAlign.center,
                      indicatorStyle: const IndicatorStyle(
                        width: 20,
                        color: Colors.indigo,
                        padding: EdgeInsets.all(20.0),
                      ),
                      startChild: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Kentrosaurus(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.indigo,
                          fixedSize: Size(300, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 8,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: SvgPicture.asset(
                                dino7,
                                height: 50,
                                width: 50,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Kentrosaurus",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Text(
                              "Type: Carnivorous",
                              style:
                              TextStyle(fontSize: 12, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    TimelineTile(
                      alignment: TimelineAlign.center,
                      indicatorStyle: const IndicatorStyle(
                        width: 20,
                        color: Colors.pink,
                        padding: EdgeInsets.all(20.0),
                      ),
                      endChild: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Monolophosaurus(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pink,
                          fixedSize: Size(300, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 8,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: SvgPicture.asset(
                                dino8,
                                height: 50,
                                width: 50,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Monolophosaurus",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Text(
                              "Type: Carnivorous",
                              style:
                              TextStyle(fontSize: 11, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    TimelineTile(
                      alignment: TimelineAlign.center,
                      indicatorStyle: const IndicatorStyle(
                        width: 20,
                        color: Colors.brown,
                        padding: EdgeInsets.all(20.0),
                      ),
                      startChild: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Plateosaurus(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.brown,
                          fixedSize: Size(300, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 8,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: SvgPicture.asset(
                                dino9,
                                height: 50,
                                width: 50,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Plateosaurus",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Text(
                              "Type: Carnivorous",
                              style:
                              TextStyle(fontSize: 12, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    TimelineTile(
                      alignment: TimelineAlign.center,
                      indicatorStyle: const IndicatorStyle(
                        width: 20,
                        color: Colors.teal,
                        padding: EdgeInsets.all(20.0),
                      ),
                      endChild: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Pteranodon(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          fixedSize: Size(300, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 8,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: SvgPicture.asset(
                                dino10,
                                height: 50,
                                width: 50,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Pteranodon",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Text(
                              "Type: Carnivorous",
                              style:
                              TextStyle(fontSize: 12, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    TimelineTile(
                      alignment: TimelineAlign.center,
                      indicatorStyle: const IndicatorStyle(
                        width: 20,
                        color: Colors.deepOrange,
                        padding: EdgeInsets.all(20.0),
                      ),
                      startChild: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Talarurus(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.deepOrange,
                          fixedSize: Size(300, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 8,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: SvgPicture.asset(
                                dino11,
                                height: 50,
                                width: 50,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Talarurus",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Text(
                              "Type: Carnivorous",
                              style:
                              TextStyle(fontSize: 12, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    TimelineTile(
                      alignment: TimelineAlign.center,
                      indicatorStyle: const IndicatorStyle(
                        width: 20,
                        color: Colors.greenAccent,
                        padding: EdgeInsets.all(20.0),
                      ),
                      endChild: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Titanosaurus(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.greenAccent,
                          fixedSize: Size(300, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 8,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: SvgPicture.asset(
                                dino12,
                                height: 50,
                                width: 50,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Titanosaurus",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Text(
                              "Type: Carnivorous",
                              style:
                              TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
