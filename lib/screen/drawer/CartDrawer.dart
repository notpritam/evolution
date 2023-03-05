import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../../main.dart';
import '../CartScreen.dart';
import 'MenuScreenDrawer.dart';

class CartDrawerScreen extends StatefulWidget {
  const CartDrawerScreen({super.key});

  @override
  State<CartDrawerScreen> createState() => _CartDrawerScreenState();
}

class _CartDrawerScreenState extends State<CartDrawerScreen> {
  final zoomDrawerCOntroller = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuBackgroundColor: Color(0xFF636bbd),
      style: DrawerStyle.defaultStyle,
      menuScreen: MenuScreen(),
      mainScreen: CartScreen(),
      controller: zoomDrawerCOntroller,
      borderRadius: 24.0,
      showShadow: true,
      angle: 0,
      // drawerShadowsBackgroundColor: Colors.white,
      slideWidth: MediaQuery.of(context).size.width * 0.65,
    );
  }
}
