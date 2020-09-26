import 'package:flutter/material.dart';

class CustomNavbar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green,
      elevation: 0.0,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(backgroundImage: AssetImage('assets/images/mypic.png'),)
      ),
      title: Text("John Wick",style: TextStyle(fontSize: 18.0),),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.search),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.notifications_none),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.more_vert),
        ),
      ],
      // leading:Placeholder(),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}