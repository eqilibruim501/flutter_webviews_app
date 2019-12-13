import 'package:flutter/material.dart';
import 'web_view_container.dart';

class Home extends StatelessWidget {
  static final links = 'https://fluttercentral.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: Key('8197'),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Want to call Webview?",
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Then click on below button",
                  style: TextStyle(fontSize: 26),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "The https://fluttercentral.com",
                  style: TextStyle(fontSize: 26),
                ),
                SizedBox(
                  height: 50,
                ),
                _button(context, links),
              ],
            ))));
  }

  Widget _button(BuildContext context, String url) {
    return Container(
        padding: EdgeInsets.all(20.0),
        child: FlatButton(
          color: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
          child: Text(
            "Call Webview",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () => _urlHandleButton(context, url),
        ));
  }

  void _urlHandleButton(BuildContext context, String url) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => WebViewContainer(url)));
  }
}
