import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Icon customIcon = const Icon(Icons.search);
  Widget customSearchBar = const Text("YOU search engine");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor("f5f5f7"),

        // AppBar
        appBar: AppBar(
          title: customSearchBar,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  if (customIcon.icon == Icons.search) {
                    customIcon = const Icon(
                      Icons.cancel,
                      color: Colors.white,
                    );

                    customSearchBar = const ListTile(
                      title: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search with You.com',
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    );
                  } else {
                    customIcon = const Icon(
                      Icons.search,
                      color: Colors.white,
                    );
                    customSearchBar = const Text(
                      "YOU search engine",
                      style: TextStyle(color: Colors.white),
                    );
                  }
                });
              },
              icon: customIcon,
            )
          ],
          centerTitle: false,
        ),

        // Body
        body: ListView(
          children: [
            const SizedBox(height: 10),

            // Logo
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //First Logo
                  Image.asset(
                    "assets/images/logo.png",
                    width: 50,
                    height: 50,
                  ),

                  // Second Logo
                  Image.asset(
                    "assets/images/tafuta.png",
                    width: 25,
                    height: 25,
                  ),
                ],
              ),
            ),

            // Top Sites
            Row(children: [
              // Icon Container
              Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: HexColor("494aff"),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Icon(Icons.star, color: Colors.white)),

              // Header
              Text("Top Sites"),
            ]),
            SizedBox(height: 15),

            // Container of Top Sites
            Container(
                margin: EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Column(
                  children: [
                    SizedBox(height: 15),

                    // Upper Icons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/logo.png",
                              width: 45,
                              height: 45,
                            ),
                            Text("You"),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/socials/fb.png",
                              width: 40,
                              height: 40,
                            ),
                            SizedBox(height: 10),
                            Text("Facebook"),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/socials/insta.png",
                              width: 40,
                              height: 40,
                            ),
                            SizedBox(height: 10),
                            Text("Instagram"),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/socials/yt.png",
                              width: 40,
                              height: 40,
                            ),
                            SizedBox(height: 10),
                            Text("YouTube"),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 20),

                    // Lower Icons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/socials/linkedin.png",
                              width: 40,
                              height: 40,
                            ),
                            SizedBox(height: 10),
                            Text("LinkedIn"),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/socials/twitter.png",
                              width: 40,
                              height: 40,
                            ),
                            SizedBox(height: 10),
                            Text("Twitter"),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/socials/tiktok.png",
                              width: 40,
                              height: 40,
                            ),
                            SizedBox(height: 10),
                            Text("Tiktok"),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/socials/pinterest.png",
                              width: 40,
                              height: 40,
                            ),
                            SizedBox(height: 10),
                            Text("Pintrest"),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 15),
                  ],
                )),
            SizedBox(height: 30),

            // Privacy
            Row(children: [
              // Icon Container
              Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: HexColor("222224"),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Icon(Icons.privacy_tip_rounded, color: Colors.white)),

              // Header
              Text("Privacy"),
            ]),
            SizedBox(height: 15),

            // Privacy Container Text
            Container(
                margin: EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text(
                          "You.com has prevented 245 of trackers and ads from tracking your browsing"),
                    ),
                    SizedBox(height: 20),
                  ],
                )),
            SizedBox(height: 30),

            // Bookmarks
            Row(children: [
              // Icon Container
              Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: HexColor("00bdff"),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Icon(Icons.bookmark, color: Colors.white)),

              // Header
              Text("Bookmarks"),
            ]),
            SizedBox(height: 15),

            // Container of Bookmarked Sites
            Container(
                margin: EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Column(
                  children: [
                    SizedBox(height: 15),

                    // Upper Icons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/socials/insta.png",
                              width: 40,
                              height: 40,
                            ),
                            Text("Instagram"),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/socials/tiktok.png",
                              width: 40,
                              height: 40,
                            ),
                            SizedBox(height: 10),
                            Text("Tiktok"),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/logo.png",
                              width: 45,
                              height: 45,
                            ),
                            SizedBox(height: 10),
                            Text("You"),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/socials/yt.png",
                              width: 40,
                              height: 40,
                            ),
                            SizedBox(height: 10),
                            Text("YouTube"),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 10),
                  ],
                )),
            SizedBox(height: 30),
          ],
        ));
  }
}
