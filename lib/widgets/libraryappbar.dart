import 'package:flutter/material.dart';

class LibraryAppBar extends StatelessWidget {
  const LibraryAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.blue,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Library',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.blue
              ),
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.more_vert,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
