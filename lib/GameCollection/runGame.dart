import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class runGame extends StatefulWidget {
  const runGame({Key? key, title}) : super(key: key);


  @override
  _runGameState createState() => _runGameState();
}

class _runGameState extends State<runGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 5, 5, 5),
      appBar: AppBar(
        title: Text("Playgame"),
      ),
      body: Center(
        child: Container(
            constraints: BoxConstraints(
              maxHeight: 300,maxWidth: 567
            ),
              child: WebView(
                zoomEnabled: false,
                initialUrl: "http://vizzed.net/emulatorjs/index.php?gameID=1324&gameName=Metal%20Gear%20Solid&system=gbc&gameurl=http%3A%2F%2Fwww.vizzed.net%2Fgbc%2Ffiles%2FMetal_Gear_Solid.zip&resolution=Low",
                javascriptMode: JavascriptMode.unrestricted,
              ),
            ),
      ),
    );
  }
}
