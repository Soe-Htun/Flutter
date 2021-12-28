import 'package:flutter/material.dart';

import 'dart:io' show Platform;
import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';
import 'package:teledart/model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'Flutter Telegram Bot'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //  final telegram = Telegram('5061570980:AAFhFeJjOVZa3d5On9zazL5KCfOE5Ec5q-M');
   // TeleDart teleDart;
    // String botName = '';
   // var msgId =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(icon: Icon(Icons.play_arrow),
          onPressed: () => _startBot())
        ],
      ),
      body: Center(
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Bot')
          ],
        ),
      ),
    );
  }
   _startBot() async {
    final envVars = Platform.environment;

    var telegram = Telegram(envVars['5092344607:AAEmajG6tGZRPnvJlPX3BL7mK-V8e_oBFcc']!);
    var event = Event((await telegram.getMe()).username!);

    var teledart = TeleDart(telegram, event);
    teledart.start();
    // teledart.onMessage(entityType: 'bot_command', keyword: 'start').listen(
    //   (message) =>
    //     teledart.telegram.sendMessage(message.chat.id, 'Hello TeleDart!'));
    // teledart
    //   .onCommand('short')
    //   .listen(((message) => teledart.replyMessage(message, 'This works too!')));
    // teledart.onCommand(RegExp('hello', caseSensitive: false)).listen(
    //   (message) => teledart.telegram.sendMessage(message.chat.id, 'hi!'));
    teledart.onMessage(entityType: 'bot_command', keyword: 'start')
    .listen((message) {
      // msgId = message.chat.id;
      teledart.telegram.sendMessage(message.chat.id, 'Hello TeleDart!');
    });
  }

}
