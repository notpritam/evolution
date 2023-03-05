import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../constants/images.dart';
import '../utils/theme.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bgColor,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
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
          "My cart",
          style: TextStyle(color: titleColor),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Image.asset(
                          shoeIcon,
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Nike Shoes"),
                            Text(
                              "\$122.9",
                              style: TextStyle(fontSize: 22),
                            ),
                            Row(
                              children: [
                                Chip(
                                    label: Text(
                                  "US 8",
                                  style: TextStyle(fontSize: 12),
                                )),
                                Container(
                                  height: 30,
                                  width: 30,
                                  margin: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.remove,
                                    ),
                                    iconSize: 15,
                                  ),
                                ),
                                Container(child: Text("1")),
                                Container(
                                  height: 30,
                                  width: 30,
                                  margin: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.add),
                                    iconSize: 15,
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Image.asset(
                          shoeIcon,
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Nike Shoes"),
                            Text(
                              "\$122.9",
                              style: TextStyle(fontSize: 22),
                            ),
                            Row(
                              children: [
                                Chip(
                                    label: Text(
                                  "US 8",
                                  style: TextStyle(fontSize: 12),
                                )),
                                Container(
                                  height: 30,
                                  width: 30,
                                  margin: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.remove,
                                    ),
                                    iconSize: 15,
                                  ),
                                ),
                                Container(child: Text("1")),
                                Container(
                                  height: 30,
                                  width: 30,
                                  margin: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.add),
                                    iconSize: 15,
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Image.asset(
                          shoeIcon,
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Nike Shoes"),
                            Text(
                              "\$122.9",
                              style: TextStyle(fontSize: 22),
                            ),
                            Row(
                              children: [
                                Chip(
                                    label: Text(
                                  "US 8",
                                  style: TextStyle(fontSize: 12),
                                )),
                                Container(
                                  height: 30,
                                  width: 30,
                                  margin: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.remove,
                                    ),
                                    iconSize: 15,
                                  ),
                                ),
                                Container(child: Text("1")),
                                Container(
                                  height: 30,
                                  width: 30,
                                  margin: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.add),
                                    iconSize: 15,
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Image.asset(
                          shoeIcon,
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Nike Shoes"),
                            Text(
                              "\$122.9",
                              style: TextStyle(fontSize: 22),
                            ),
                            Row(
                              children: [
                                Chip(
                                    label: Text(
                                  "US 8",
                                  style: TextStyle(fontSize: 12),
                                )),
                                Container(
                                  height: 30,
                                  width: 30,
                                  margin: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.remove,
                                    ),
                                    iconSize: 15,
                                  ),
                                ),
                                Container(child: Text("1")),
                                Container(
                                  height: 30,
                                  width: 30,
                                  margin: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.add),
                                    iconSize: 15,
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Image.asset(
                          shoeIcon,
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Nike Shoes"),
                            Text(
                              "\$122.9",
                              style: TextStyle(fontSize: 22),
                            ),
                            Row(
                              children: [
                                Chip(
                                    label: Text(
                                  "US 8",
                                  style: TextStyle(fontSize: 12),
                                )),
                                Container(
                                  height: 30,
                                  width: 30,
                                  margin: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.remove,
                                    ),
                                    iconSize: 15,
                                  ),
                                ),
                                Container(child: Text("1")),
                                Container(
                                  height: 30,
                                  width: 30,
                                  margin: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.add),
                                    iconSize: 15,
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Image.asset(
                          shoeIcon,
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Nike Shoes"),
                            Text(
                              "\$122.9",
                              style: TextStyle(fontSize: 22),
                            ),
                            Row(
                              children: [
                                Chip(
                                    label: Text(
                                  "US 8",
                                  style: TextStyle(fontSize: 12),
                                )),
                                Container(
                                  height: 30,
                                  width: 30,
                                  margin: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.remove,
                                    ),
                                    iconSize: 15,
                                  ),
                                ),
                                Container(child: Text("1")),
                                Container(
                                  height: 30,
                                  width: 30,
                                  margin: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.add),
                                    iconSize: 15,
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Price Details",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Product Amount : "), Text("\$122.9")],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Bag Discount Amount : "), Text("\$10.9")],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Delivery Charges : "), Text("\$22.3")],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Total Amount : "), Text("\$122.3")],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(20)),
                child: Text("Checkout"),
              )
            ]),
          )
        ],
      ),
    );
  }
}
