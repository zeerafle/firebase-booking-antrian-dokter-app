import 'package:flutter/material.dart';
import 'package:postest7_2009106054_vauwez/drawer.dart';

class Booking extends StatelessWidget {
  Booking({Key? key}) : super(key: key);

  List<Widget> listBooking = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: Color(0xff333333)),
        ),
        backgroundColor: const Color(0xfff0f8ea),
        drawer: const MyDrawer(),
        body: ListView(
          padding: const EdgeInsets.all(17),
          children: [
            const Text(
              "Booking Anda",
              style: TextStyle(fontSize: 27, color: Color(0xff333333)),
            ),
            const SizedBox(
              height: 27,
            ),
            Column(
              children: [
                ContainerBooking(sisaAntrian: "29", namaDokter: "Dr. Strange"),
                ContainerBooking(sisaAntrian: "29", namaDokter: "Dr. Strange"),
                ContainerBooking(sisaAntrian: "29", namaDokter: "Dr. Strange")
              ],
            )
          ],
        ));
  }
}

class ContainerBooking extends StatelessWidget {
  const ContainerBooking(
      {Key? key,
      required this.sisaAntrian,
      required this.namaDokter,
      this.onUpdate,
      this.onDelete})
      : super(key: key);

  final String sisaAntrian;
  final String namaDokter;
  final Function? onUpdate;
  final Function? onDelete;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Container(
            padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 13),
            margin: const EdgeInsets.symmetric(vertical: 7),
            height: 91,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Container(
                    height: 80,
                    width: 80,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xfff0f66e),
                      shape: BoxShape.circle,
                    ),
                    child: Text(sisaAntrian,
                        style: TextStyle(
                            color: const Color(0xff333333), fontSize: 27))),
                SizedBox(width: 14),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Sisa pasien",
                        style:
                            TextStyle(color: Color(0xff333333), fontSize: 12)),
                    Text(namaDokter,
                        style: TextStyle(
                            color: Color(0xff333333),
                            fontSize: 10,
                            fontFamily: "PoppinsRegular")),
                    Spacer(),
                    Text("Estimasi waktu: 70 menit",
                        style: TextStyle(
                            color: Color(0xff333333),
                            fontSize: 10,
                            fontFamily: "PoppinsRegular"))
                  ],
                ),
                const Spacer(),
                IconButton(
                    icon: Icon(Icons.cancel_schedule_send),
                    tooltip: "Batalkan antrian",
                    onPressed: () {}),
              ],
            )));
  }
}
