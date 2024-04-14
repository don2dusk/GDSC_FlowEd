import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              children: [blackCard()],
            ),
          )),
    );
  }
}

class blackCard extends StatelessWidget {
  const blackCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: Padding(
        padding: const EdgeInsets.all(15).copyWith(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Hello, Winifred!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      "Are you ready for classes today?",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                      textAlign: TextAlign.left,
                    )
                  ],
                ),
                SizedBox(
                  width: 70,
                  height: 70,
                  child: IconButton(
                      style: IconButton.styleFrom(
                          backgroundColor: Colors.grey[800]),
                      onPressed: () {},
                      icon: Icon(Icons.notifications_outlined,
                          size: 30, color: Colors.white)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
