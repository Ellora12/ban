import 'package:farmer/Login.dart';
import 'package:farmer/landingpage.dart';
import 'package:flutter/material.dart';
import 'package:farmer/profile.dart';

import 'Dashboard.dart';
import 'Signup.dart';

void main() => runApp(MaterialApp(initialRoute: '/', routes: {
      '/': (context) => landingpage(),
    }));
