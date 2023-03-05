import 'package:evolution/screen/drawer/MenuScreenDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../../main.dart';
import '../HomeScreen.dart';

class HomeDrawerScreen extends StatefulWidget {
  const HomeDrawerScreen({super.key});

  @override
  State<HomeDrawerScreen> createState() => _HomeDrawerScreenState();
}

class _HomeDrawerScreenState extends State<HomeDrawerScreen> {
  final zoomDrawerCOntroller = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuBackgroundColor: Color(0xFF636bbd),
      style: DrawerStyle.defaultStyle,
      menuScreen: MenuScreen(),
      mainScreen: HomeScreen(),
      controller: zoomDrawerCOntroller,
      borderRadius: 24.0,
      showShadow: true,
      angle: 0,
      // drawerShadowsBackgroundColor: Colors.white,
      slideWidth: MediaQuery.of(context).size.width * 0.65,
    );
  }
}
