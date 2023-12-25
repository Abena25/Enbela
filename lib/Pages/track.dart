import 'package:flutter/material.dart';

class TrackOrder extends StatefulWidget {
  @override
  _TrackOrderState createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => Navigator.of(context).pop(),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromRGBO(255, 194, 0, 1.0),
                  Color.fromRGBO(255, 61, 61, 0.5),
                ]),
          ),
        ),
      ),
    );
  }
}
