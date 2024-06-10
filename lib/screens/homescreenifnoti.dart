import 'package:intl/intl.dart';

import '../dummy_data/d_data.dart';
import 'package:flutter/material.dart';

class Ifnotification extends StatefulWidget {
  const Ifnotification({super.key});

  @override
  State<Ifnotification> createState() => _IfnotificationState();
}

class _IfnotificationState extends State<Ifnotification> {
  final List<Notificationitem> noti = [
    Notificationitem(
        title: "title1",
        message:
            "some random message for the title 1,Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
        time: DateTime.now()),
    Notificationitem(
        title: "title2",
        message:
            "some random message for the title 2,Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
        time: DateTime.now()),
    Notificationitem(
        title: "title3",
        message:
            "some random message for the title 3,Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
        time: DateTime.now()),
    Notificationitem(
        title: "title4",
        message:
            "some random message for the title 4,Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
        time: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: noti.length,
      itemBuilder: (context, index) {
        final item = noti[index];
        final month = DateFormat.MMMM().format(item.time);
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListTile(
            tileColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            leading: Icon(
              Icons.person,
              size: 29,
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title ?? "Not provided",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                Text(
                  month +
                      " " +
                      item.time.month.toString() +
                      "," +
                      item.time.year.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                )
              ],
            ),
            subtitle: Text(
              item.message,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
          ),
        );
      },
    );
  }
}
