import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:url_launcher/url_launcher.dart';
import 'TimeLine.dart';

var _github = 'https://github.com/Prithvi202';
var _linkedin = 'https://www.linkedin.com/in/prithvi-m-potti-2687561b4/';
var _twitter = 'https://twitter.com/Prithvi202';
var _instagram = 'https://www.instagram.com/prith.vi.202/';

class ConnectAndShareScreen extends StatelessWidget {
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
              icon: const Icon(Icons.workspaces_outline),
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
              icon: const Icon(Icons.share_rounded),
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
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  height: 80,
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(16.0),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.blueAccent,
                      width: 5,
                    ),

                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Connect with me on Socials: ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Center(
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            child: ElevatedButton(
                              child: Container(
                                margin: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                    AssetImage("assets/images/github.png"),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                fixedSize: Size(300, 50),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 5.0,
                                    color: Colors.blueAccent,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              onPressed: () {
                                _launchURL(_github);
                              },
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            height: 70,
                            child: ElevatedButton(
                              child: Container(
                                margin: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                    AssetImage("assets/images/twitter.png"),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              onPressed: () {
                                _launchURL(_twitter);
                              },
                              style: ElevatedButton.styleFrom(
                                side: BorderSide(
                                  width: 5.0,
                                  color: Colors.blueAccent,
                                ),
                                primary: Colors.white,
                                fixedSize: Size(300, 50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            height: 70,
                            child: ElevatedButton(
                              child: Container(
                                margin: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/linkedin.png"),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              onPressed: () {
                                _launchURL(_linkedin);
                              },
                              style: ElevatedButton.styleFrom(
                                side: BorderSide(
                                  width: 5.0,
                                  color: Colors.blueAccent,
                                ),
                                primary: Colors.white,
                                fixedSize: Size(300, 50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            height: 70,
                            child: ElevatedButton(
                              child: Container(
                                margin: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/instagram.png"),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              onPressed: () {
                                _launchURL(_instagram);
                              },
                              style: ElevatedButton.styleFrom(
                                side: BorderSide(
                                  width: 5.0,
                                  color: Colors.blueAccent,
                                ),
                                primary: Colors.white,
                                fixedSize: Size(300, 50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 75,
                ),
                Container(
                  height: 20,
                  width: 100,
                  color: Colors.white,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'App By Prithvi',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void _launchURL(String _url) async => await canLaunch(_url)
    ? await launch(_url)
    : await launch(_url, forceSafariVC: false, forceWebView: false);
