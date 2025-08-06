import 'package:flutter/material.dart';

class stateful_page extends StatefulWidget {
  const stateful_page({super.key});

  @override
  State<stateful_page> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<stateful_page> {
  int _count = 0;

  void _add_count() {
    setState(() {
      _count += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 69, 158, 72),
        title: Center(
          child: Text(
            "winow v.1",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
        leading: Icon(Icons.menu, color: Colors.white, size: 30),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 90,
            width: 200,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 16, 118, 28),
            ),

            child: Center(
              child: Text(
                "Count: ${_count.toString()}",
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
            ),
          ),
          Container(height: 20),

          GestureDetector(
            onTap: _add_count,
            child: Container(
              height: 100,
              width: 100,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromARGB(255, 16, 118, 28),
              ),

              child: Icon(
                Icons.plus_one_outlined,
                size: 40,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ); // Replace with your widget tree
  }
}
