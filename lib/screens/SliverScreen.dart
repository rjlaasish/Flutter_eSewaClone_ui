import 'package:flutter/material.dart';

class SliverScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        _customHeader()
      ],

      
    );
  }
}

SliverToBoxAdapter _customHeader(){
  return SliverToBoxAdapter(
    child: Container(
          width: 100.0,
          height: 500.0,
          color: Colors.amber,
    ),
  );
}