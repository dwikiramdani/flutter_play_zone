import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:youtube_player/youtube_player.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget getAppBar() {
    return AppBar(
        title: Text('My Play Zone'));
  }

  Widget getWebView(){
    return WebView(
      initialUrl: 'http://jakarta-tourism.go.id',
      javascriptMode: JavascriptMode.unrestricted,
    );
  }

  Widget getYoutube(){
    return YoutubePlayer(
      context: context,
      source: 'https://youtu.be/js1A5dPnBug',
      quality: YoutubeQuality.MEDIUM,
      aspectRatio: 16/9,
      showThumbnail: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: getAppBar(),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
          color: Colors.cyan,
          width: double.infinity,
          child: getYoutube()
        ),
      ),
    );
  }
}