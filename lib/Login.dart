import 'package:flutter/material.dart';

import 'Dashboard.dart';

void main() => runApp(MaterialApp(
      home: Login(),
    ));

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFBFDFB2),
      appBar: AppBar(
        title: Text(
          'SignUp',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 200,
                width: 370,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      opacity: 0.9,
                      image: NetworkImage(
                          "https://www.shutterstock.com/image-vector/farmer-using-tablet-control-monitoring-600w-1500692141.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(50, 10, 50, 0),
                child: SizedBox(
                  child: Text(
                    "FARMER'S DIGITAL ASSISTANCE",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 3,
                        color: const Color(0xff7D360E)),
                  ),
                  height: 100.0,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blue[50],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: 'Username',
                    hintStyle: TextStyle(
                        fontSize: 20,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45),
                  ),
                ),
              ),
              SizedBox.square(
                dimension: 5,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blue[50],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                        fontSize: 20,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45),
                  ),
                ),
              ),
              SizedBox.square(
                dimension: 5,
              ),
              Center(
                  child: Container(
                height: 60,
                width: 150,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Gd()),
                    );
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.black12))),
                    overlayColor: MaterialStateProperty.resolveWith(
                      (states) {
                        return states.contains(MaterialState.pressed)
                            ? Colors.greenAccent
                            : null;
                      },
                    ),
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
