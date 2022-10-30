import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

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
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 5, 5, 5),
      appBar: MediaQuery.of(context).orientation == Orientation.landscape
          ? null
          : AppBar(
              title: Text("Playgame"),
            ),
      body: Column(children: [gameDisplay(), SingleChildScrollView()]),
    );
  }

  SingleChildScrollView gameDisplay() {
    String game = widget.gamelink;
    return SingleChildScrollView(
      child: Container(
        constraints: BoxConstraints(maxHeight: 360, maxWidth: double.infinity),
        child: WebView(
          zoomEnabled: false,
          initialUrl: //"http://vizzed.net/emulatorjs/index.php?gameID=1324&gameName=Metal%20Gear%20Solid&system=gbc&gameurl=http%3A%2F%2Fwww.vizzed.net%2Fgbc%2Ffiles%2FMetal_Gear_Solid.zip&resolution=Low"
              Uri.dataFromString('''<iframe src="$game" 
              width=100% 
              height=100% 
              frameborder="no" 
              allowfullscreen="true" 
              webkitallowfullscreen="true" 
              mozallowfullscreen="true" 
              scrolling="no"></iframe>''', mimeType: 'text/html').toString(),
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
