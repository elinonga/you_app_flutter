import 'package:flutter/material.dart';

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
        appBar: AppBar(
          title: customSearchBar,
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  if (customIcon.icon == Icons.search) {
                    customIcon = const Icon(
                      Icons.cancel,
                      color: Colors.black,
                    );

                    customSearchBar = const ListTile(
                      title: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search with You.com or enter address',
                          hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    );
                  } else {
                    customIcon = const Icon(
                      Icons.search,
                      color: Colors.black,
                    );
                    customSearchBar = const Text(
                      "YOU search engine",
                      style: TextStyle(color: Colors.black),
                    );
                  }
                });
              },
              icon: customIcon,
            )
          ],
          centerTitle: false,
        ),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customSearchBar,
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (customIcon.icon == Icons.search) {
                        customIcon = const Icon(
                          Icons.cancel,
                          color: Colors.black,
                        );

                        customSearchBar = const ListTile(
                          title: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search with You.com or enter address',
                              hintStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                              border: InputBorder.none,
                            ),
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        );
                      } else {
                        customIcon = const Icon(
                          Icons.search,
                          color: Colors.black,
                        );
                        customSearchBar = const Text(
                          "YOU search engine",
                          style: TextStyle(color: Colors.black),
                        );
                      }
                    });
                  },
                  icon: customIcon,
                )
              ],
            ),
          ],
        ));
  }
}
