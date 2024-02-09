import 'package:flutter/material.dart';

class MyFormTextField extends StatelessWidget {
  final String title;
  const MyFormTextField({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
         Text(title, style: const TextStyle(fontSize: 15)),
        const SizedBox(width: 5),
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                  width: 2.0,
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              fillColor: Colors.grey[200],
              filled: true,

            ),

          ),
        ),
      ],
    );
  }
}
