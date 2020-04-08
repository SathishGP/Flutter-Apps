import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my first app'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Image.network('https://images.unsplash.com/photo-1487788270274-b0a7d600569f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80'),
        //child: Image.asset('assets/image1.jpeg'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click!'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
