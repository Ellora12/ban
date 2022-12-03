import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Profile(),
    ));

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assests/aa.jpg"), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            'Profile',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  radius: 100.0,
                  backgroundImage: AssetImage("assests/unnamed.jpg"),
                ),
              ),
              Divider(
                color: Colors.grey[800],
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Username :',
                    style: TextStyle(
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(0.0, 0.0),
                          blurRadius: 2.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ],
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                      letterSpacing: 2.0,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xffD5E4CF),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: Offset(4, 8), // Shadow position
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Abrar@45',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Divider(
                color: Colors.white10,
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Fullname  :',
                    style: TextStyle(
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(0.0, 0.0),
                          blurRadius: 2.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ],
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                      letterSpacing: 2.0,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xffD5E4CF),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: Offset(4, 8), // Shadow position
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Sayedul Abrar',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Divider(
                color: Colors.white10,
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Phone No :',
                    style: TextStyle(
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(0.0, 0.0),
                          blurRadius: 2.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ],
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                      letterSpacing: 2.0,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xffD5E4CF),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: Offset(4, 8), // Shadow position
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        '01556629672',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Divider(
                color: Colors.white10,
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Location   :',
                    style: TextStyle(
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(0.0, 0.0),
                          blurRadius: 2.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ],
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                      letterSpacing: 2.0,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xffD5E4CF),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: Offset(4, 8), // Shadow position
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Dhaka Cant',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Divider(
                color: Colors.white10,
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Birth Date :',
                    style: TextStyle(
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(0.0, 0.0),
                          blurRadius: 2.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ],
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                      letterSpacing: 2.0,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xffD5E4CF),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: Offset(4, 8), // Shadow position
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        '01/10/1995',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
