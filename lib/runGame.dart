import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:webview_flutter/webview_flutter.dart';

class runGame extends StatefulWidget {
  final String gamelink;
  const runGame(this.gamelink, {Key? key, title}) : super(key: key);

  @override
  _runGameState createState() => _runGameState();
}

void j() {}

class _runGameState extends State<runGame> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 5, 5, 5),
      appBar: MediaQuery.of(context).orientation == Orientation.landscape
          ? null
          : AppBar(
              title: Text("Playgame"),
            ),
      body: Stack(children: [gameDisplay()]),
    );
  }

  SingleChildScrollView gameDisplay() {
    String game = widget.gamelink;
    String? height;
    double sizes = 370;
    if (game.contains('vizzed')) {
      height = '"500"';
      if (MediaQuery.of(context).orientation == Orientation.portrait) {
        sizes = 190;
      }
    } else {
      height = '100%';
    }
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Container(
        constraints: BoxConstraints(
            maxHeight: sizes, maxWidth: double.infinity), //360double.infinity
        // child: WebView(
        //   zoomEnabled: false,
        //   initialUrl: Uri.dataFromString('''<iframe src="$game"
        //       width=100%
        //       height= $height
        //       frameborder="no"
        //       allowfullscreen="true"
        //       webkitallowfullscreen="true"
        //       mozallowfullscreen="true"
        //       scrolling="no"></iframe>''', mimeType: 'text/html').toString(),
        //   javascriptMode: JavascriptMode.unrestricted,
        // ),
      ),
    );
  }
}
