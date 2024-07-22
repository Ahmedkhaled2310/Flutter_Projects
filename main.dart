import 'package:flutter/material.dart';

void main() {
  runApp(bus());
}

class bus extends StatefulWidget {
  @override
  State<bus> createState() => _busState();
}

class _busState extends State<bus> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color.fromRGBO(72, 79, 88, 100),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 101,
                backgroundColor: Colors.white70,
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage("images/busCard.webp"),
                ),
              ),
              const Text(
                'Ahmed Khaled',
                style: TextStyle(
                    color: Colors.white, fontSize: 24, fontFamily: 'Pacifico'),
              ),
              Text(
                '$i',
                style: TextStyle(
                    color: Colors.white54,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const Divider(
                height: 8,
                endIndent: 60,
                indent: 60,
                thickness: 0.3,
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    width: 320,
                    height: 50,
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Icon(Icons.phone),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25.0),
                          child: Text(
                            ':01552452310',
                            style: TextStyle(
                                fontFamily: 'Pacifico',
                                fontSize: 17,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 3),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    width: 320,
                    height: 50,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          Icon(Icons.mail),
                          Padding(
                            padding: EdgeInsets.only(left: 25.0),
                            child: Text(
                              ':AhmedKhaled23@gmail.com',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Padding(
                padding:  EdgeInsets.only(top: 210.0,right: 190),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black,),
                    onPressed: () {
                      i = 0;
                      setState(() {});
                    },
                    child: Text(
                      'Reset',
                      style: TextStyle(fontSize: 25, color: Colors.white,backgroundColor: Colors.black),
                    )),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          i++;

          setState(() {});
        },
        backgroundColor: Colors.black87,
        child: Text(
          '+',
          style: TextStyle(fontSize: 30, color: Colors.white60),
        ),
      ),
    ));
  }
}
