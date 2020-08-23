import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget receitaTile(String name) {
  return Padding(
    padding: EdgeInsets.all(8),
    child: Card(
      color: Colors.green,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: ListTile(
          title: Text(
            name,
            style: TextStyle(color: Colors.white),
          ),
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onTap: () {},
        ),
      ),
    ),
  );
}
