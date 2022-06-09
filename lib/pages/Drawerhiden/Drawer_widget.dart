import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Avatar_progerss.dart';
import '../chart.dart';
import 'drawer_items.dart';

class DrawerWidget extends StatefulWidget {
  VoidCallback closdDrawer;
  DrawerWidget({required this.closdDrawer});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget>
    with SingleTickerProviderStateMixin {
  final double runanim = 0.4;
  @override
  Widget build(BuildContext context) {
    var we = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
        child: Column(
      children: [
        _buildButton(context),
        Container(margin:EdgeInsets.only(left: 60),child: Progerss_Avater()),
        SizedBox(
          height: he * 0.02,
        ),
        _buidText(context),
        SizedBox(
          height: he * 0.02,
        ),
        buildDrawerItem(context),
        SizedBox(
          height: he * 0.02,
        ),
        Chart()
      ],
    ));
  }

  Widget buildDrawerItem(BuildContext context) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: DrawerItems.all
              .map((item) => ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 1),
                    leading: Icon(
                      item.icon,
                      color: Color(0xFF958EF1),
                    ),
                    title: Text(
                      item.title,
                      style: const TextStyle(color: Colors.white),
                    ),
                    onTap: () {},
                  ))
              .toList(),
        ),
      );
  Widget _buildButton(contex) {
    var we = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(top: he * 0.09, left: we * 0.15),
      width: 50,
      height: 50,
      alignment: Alignment.center,
      decoration:
          const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
      child: Container(
          width: 47,
          height: 47,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFF1A1C21),
          ),
          child: IconButton(
              onPressed: widget.closdDrawer,
              icon: const Icon(
                Icons.arrow_back_ios_outlined,
                color: Colors.white,
                size: 20,
              ))),
    );
  }

  Widget _buidText(context) {
    var we = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(right: we * 0.35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Naresh Jhawar",
            style: GoogleFonts.dancingScript(
                fontSize: 30,
                letterSpacing: 1,
                color: Colors.white.withOpacity(0.8),
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
