import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:quarantime/style/theme.dart' as Style;
import 'package:quarantime/widgets/genres.dart';
import 'package:quarantime/widgets/now_playing.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Style.Colors.mainColor,
      appBar: AppBar(
        backgroundColor: Style.Colors.mainColor,
        centerTitle: true,
        leading: Icon(EvaIcons.menu2Outline, color: Colors.white),
        title: Text("QUARANTIME"),
        actions: <Widget>[
          IconButton(icon: Icon(EvaIcons.searchOutline, color: Colors.white),
              onPressed: null,)
        ],
      ),
      body: ListView(
        children: <Widget>[
          NowPlaying(),
          GenresScreen()
        ],
      ),
    );

    throw UnimplementedError();
  }
}
