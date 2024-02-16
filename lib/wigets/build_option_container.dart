import 'package:flutter/material.dart';

Widget buildOptionContainer(String title, IconData icon, Function() onTap) {
  return ListTile(

    title: Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(title),
            const Spacer(),
            IconButton(
                onPressed: onTap, icon: Icon(icon, color: Colors.orange)),
          ],
        ),
      ),
    ),
    onTap: onTap,
  );
}
