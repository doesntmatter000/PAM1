import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget{
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.location_on),
                  Text("Donnerville Drive"),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
              Text('4 Donnerville Hall, Donnerville Drive, Admaston, TF5 0DF', style: TextStyle(fontSize: 11, color: Colors.grey),)
            ],
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(19.0),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0), // Adjust the padding as needed
              child: Icon(
                Icons.notifications_outlined,
                size: 36.0,
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
