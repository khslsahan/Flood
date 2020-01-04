import 'package:flutter/material.dart';
import 'package:god_plans/models/user.dart';
import 'package:god_plans/screan/wrapper.dart';
import 'package:god_plans/services/auth.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  StreamProvider<User>.value(
      value: AuthServices().user,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:  Wrapper()
      ),
    );
  }
}




