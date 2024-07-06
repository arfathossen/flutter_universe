
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class BottomNavBarApp extends StatelessWidget {
  const BottomNavBarApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(36.0),
          ),
          color: navigationColor),
      padding: const EdgeInsets.all(24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              onPressed: () {}, icon: const Icon(CupertinoIcons.home, color: Colors.white,), iconSize: 32,),
          IconButton(
              onPressed: () {}, icon: const Icon(CupertinoIcons.search, color: Colors.grey,),),
          IconButton(
              onPressed: () {}, icon: const Icon(CupertinoIcons.person, color: Colors.grey,),),
        ],
      ),
    );
  }
}
