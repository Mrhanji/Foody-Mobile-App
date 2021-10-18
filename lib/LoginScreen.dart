import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var url = "https://foody.partibha.ml/login.php";
    var size = MediaQuery.of(context).size;
    final _k = new FlutterWebviewPlugin();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: WebviewScaffold(
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
                _k.dispose();
                _k.close();
                _k.launch(url);
              });
            },
          ),
        ),
      )),
    );
  }
}
