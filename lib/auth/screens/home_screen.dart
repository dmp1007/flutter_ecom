import 'package:flutter/material.dart';
import 'package:flutter_ecom/auth/app_state_container.dart';
import 'package:flutter_ecom/auth/models/app_state.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => new HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  AppState appState;

  @override
  Widget build(BuildContext context) {
    var container = AppStateContainer.of(context);
    appState = container.state;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Suite1'),
      ),
      body: new Center(
        child: new Text(appState.username + "1"),
      ),
    );
  }
}
