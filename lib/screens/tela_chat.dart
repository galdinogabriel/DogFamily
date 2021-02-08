import 'package:dogfamily/data/data.dart';
import 'package:dogfamily/models/anuncio.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final Anuncio name;

  ChatScreen([this.name]);
  @override
  State createState() => new ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  final TextEditingController textEditingController =
      new TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];

  void _handleSubmit(String text) {
    textEditingController.clear();
    ChatMessage chatMessage1 = new ChatMessage(
      text: text,
      name: USUARIOS[5].login,
      isMe: false,
    );
    ChatMessage chatMessage2 = new ChatMessage(
      text: text,
      name: widget.name.anunciante.login,
      isMe: true,
    );
    setState(() {
      //used to rebuild our widget
      _messages.insert(0, chatMessage1);
    });
  }

  Widget _textComposerWidget() {
    return new IconTheme(
      data: new IconThemeData(color: Colors.blue),
      child: new Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: new Row(
          children: <Widget>[
            new Flexible(
              child: new TextField(
                decoration: new InputDecoration.collapsed(
                    hintText: "Enter your message"),
                controller: textEditingController,
                onSubmitted: _handleSubmit,
              ),
            ),
            new Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              child: new IconButton(
                icon: new Icon(Icons.send),
                onPressed: () => _handleSubmit(textEditingController.text),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name.anunciante.login),
      ),
      body: new Column(
        children: <Widget>[
          new Flexible(
            child: new ListView.builder(
              padding: new EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_, int index) => _messages[index],
              itemCount: _messages.length,
            ),
          ),
          new Divider(
            height: 1.0,
          ),
          new Container(
            decoration: new BoxDecoration(
              color: Theme.of(context).cardColor,
            ),
            child: _textComposerWidget(),
          )
        ],
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  final String text;
  final String name;
  final bool isMe;
  //for optional params we use curly braces
  ChatMessage({this.text, this.name, this.isMe});
  @override
  Widget build(BuildContext context) {
    String txt = getPrettyString(text);
    if (isMe) {
      return Card(
        elevation: 0.5,
        child: ListTile(
          isThreeLine: true,
          trailing: new CircleAvatar(
            child: new Text(
              name[0],
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(" "),
              Text(name, style: Theme.of(context).textTheme.subhead),
            ],
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(" "),
              Text("$txt"),
            ],
          ),
        ),
      );
    }
    return ListTile(
      contentPadding: EdgeInsets.only(
        left: 15.0,
      ),
      isThreeLine: true,
      leading: new CircleAvatar(
        child: new Text(name[0]),
      ),
      title: Text(name, style: Theme.of(context).textTheme.subhead),
      subtitle: Text("$txt"),
    );
  }

  String getPrettyString(String str) {
    for (int i = 1; i < str.length; i++) {
      if (i % 30 == 0) {
        str = "${str.substring(0, i)} \n ${str.substring(i)}";
      }
    }
    return str;
  }
}
