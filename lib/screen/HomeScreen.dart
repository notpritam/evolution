import 'package:evolution/screen/ProductScreen.dart';
import 'package:evolution/screen/SearchScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../constants/images.dart';
import '../utils/theme.dart';
import 'drawer/CartDrawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: bgColor,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return CartDrawerScreen();
                    },
                  ));
                },
                icon: Icon(
                  Icons.local_grocery_store,
                  color: activeColor,
                ))
          ],
          leading: IconButton(
            color: activeColor,
            icon: Icon(
              Icons.dashboard,
            ),
            onPressed: () {
              ZoomDrawer.of(context)!.isOpen()
                  ? ZoomDrawer.of(context)!.close()
                  : ZoomDrawer.of(context)!.open();
            },
          ),
          centerTitle: true,
          title: Text(
            "Evolution",
            style: TextStyle(color: titleColor),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
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
                height: 70,
                child: Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return SearchScreen();
                            },
                          ));
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          padding: EdgeInsets.all(10),
                          child: Row(children: [
                            Image.asset(
                              allIcon,
                              height: 24,
                              width: 24,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("All", style: chipText),
                          ]),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(10),
                        child: Row(children: [
                          Image.asset(
                            shoeIcon,
                            height: 30,
                            width: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Footwear", style: chipText),
                        ]),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(10),
                        child: Row(children: [
                          Image.asset(
                            watchIcon,
                            height: 24,
                            width: 24,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Watches", style: chipText),
                        ]),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(10),
                        child: Row(children: [
                          Image.asset(
                            tshirtIcon,
                            height: 24,
                            width: 24,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("T-Shirts", style: chipText),
                        ]),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular",
                    style: TextStyle(fontSize: 20),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "View all",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ))
                ],
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: 10,
                  controller: new ScrollController(keepScrollOffset: false),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 400 / 500,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return popularCard(index);
                  },
                ),
              ),
            ],
          ),
        ));
  }

  Widget popularCard(int index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return ProductScreen();
          },
        ));
      },
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: randomColor(index),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              Image.asset(shoeIcon),
            ],
          ),
          Text(
            "Nike Shoes",
            style: popularTitleText,
          ),
          Text(
            "\$12.00",
            style: popularPriceText,
          )
        ]),
      ),
    );
  }
}
