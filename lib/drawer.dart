import 'package:flutter/material.dart';
import 'package:postest7_2009106054_vauwez/booking.dart';
import 'package:postest7_2009106054_vauwez/landing_page.dart';
import 'package:get/get.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        const DrawerHeader(
            child: ListTile(
          leading: Icon(Icons.person),
          title: Text("Vauwez Sam El Fareez"),
        )),
        ListTile(
            title: const Text("Booking"),
            leading: const Icon(Icons.schedule_send),
            onTap: () {
              Get.to(Booking());
            }),
        ListTile(
          title: const Text("Keluar"),
          leading: const Icon(Icons.logout),
          onTap: () {
            Get.off(const LandingPage());
          },
        )
      ]),
    );
  }
}
