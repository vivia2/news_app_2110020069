import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Heading"),
        leading: const Icon(Icons.home),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Informasi Umum",
            style: TextStyle(
                color: Colors.cyan, fontSize: 26, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => Navigator.pushNamed(context, "/profile2"),
                child: Container(
                  width: 170,
                  height: 150,
                  color: Colors.deepPurple,
                  child: Column(
                    children: [
                      Icon(
                        Icons.local_taxi_rounded,
                        size: 120,
                      ),
                      Text('Otomotive'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              InkWell(
                onTap: () => Navigator.pushNamed(context, "/page3"),
                child: Container(
                  width: 170,
                  height: 150,
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Icon(
                        Icons.sports_soccer,
                        size: 120,
                        color: Colors.white,
                      ),
                      Text('Sport'),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => Navigator.pushNamed(context, "/profile"),
                child: Container(
                  width: 170,
                  height: 150,
                  color: Colors.blueGrey,
                  child: Column(
                    children: [
                      Icon(
                        Icons.person,
                        size: 120,
                      ),
                      Text('Profil'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                child: Container(
                  width: 170,
                  height: 150,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Icon(
                        Icons.monetization_on_outlined,
                        size: 120,
                        color: Colors.white,
                      ),
                      Opacity(opacity: 0.0),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
