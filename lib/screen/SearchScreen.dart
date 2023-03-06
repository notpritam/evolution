import 'package:evolution/constants/images.dart';
import 'package:flutter/material.dart';

import '../utils/theme.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          leading: Icon(
            Icons.navigate_before,
            color: Colors.black,
          ),
          actions: [
            IconButton(
              color: Colors.red,
              onPressed: () {},
              icon: Icon(Icons.favorite),
            ),
            IconButton(
              color: Colors.black,
              onPressed: () {},
              icon: Icon(Icons.local_grocery_store),
            ),
          ],
          elevation: 0,
          backgroundColor: bgColor,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 45,
                  width: MediaQuery.of(context).size.width - 100,
                  child: TextField(
                    decoration: new InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffixIcon: Icon(
                        Icons.search,
                        size: 22,
                      ),
                      labelText: "Search...",
                      border: InputBorder.none,
                      labelStyle: TextStyle(fontSize: 14, color: greyCustom),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: activeColor),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: activeColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.tune_rounded,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Search results",
                  style: TextStyle(fontSize: 20),
                ),
                Text("122 products")
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1 / 1.2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(children: [
                            Center(
                              child: Image.asset(
                                shoeIcon,
                                height: 100,
                                width: 100,
                              ),
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: IconButton(
                                  alignment: Alignment.center,
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite_border,
                                    color: Colors.red,
                                  )),
                            )
                          ]),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Nike Shoes"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "\$100.6",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text("4.5"),
                                ],
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: activeColor,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Icon(
                                    Icons.add,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ]),
                  );
                },
              ),
            )
          ]),
        ),
      ),
    );
  }
}
