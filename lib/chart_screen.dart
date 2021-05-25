import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Chart'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ), onPressed: () {  },
          ),
        ],
      ),
      body: Center(
        child: Text('Chart Page'),
      ),
    );
  }
}
