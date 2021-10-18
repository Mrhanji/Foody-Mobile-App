import 'package:flutter/material.dart';

import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var url = "https://foody.partibha.ml/login.php";
  final _k = new FlutterWebviewPlugin();
  @override
  void dispose() {
    _k.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    Future<bool> _sc() async {
      _k.hide();
      showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                title: Text("You Want to Exit App"),
                actions: [
                  FlatButton(onPressed: () {}, child: Text('Check Bio')),
                  FlatButton(onPressed: () {}, child: Text('Yes')),
                  FlatButton(
                      onPressed: () {
                        _k.show();
                        Navigator.pop(context);
                      },
                      child: Text('No'))
                ],
              ));
      return false;
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: WillPopScope(
        onWillPop: _sc,
        child: Container(
          height: size.height,
          width: size.width,
          child: WebviewScaffold(
            url: url,
            appCacheEnabled: true,
            appBar: AppBar(
              title: Text('Foody'),
              backgroundColor: Colors.redAccent,
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  setState(() {
                    url = 'https://foody.partibha.ml';

                    _k.reloadUrl(url);
                  });
                },
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.person_rounded),
                  onPressed: () {
                    setState(() {
                      url = 'https://bio.link/iamparti';

                      _k.reloadUrl(url);
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
