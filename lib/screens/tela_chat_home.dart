import 'package:flutter/material.dart';
import 'package:dogfamily/screens/tela_chat.dart';

class ChatHome extends StatefulWidget {
  @override
  ChatScreenState createState() {
    return ChatScreenState();
  }
}

class ChatScreenState extends State<ChatHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, i) => Column(
          children: <Widget>[
            Divider(
              height: 10.0,
            ),
            ListTile(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChatScreen())),
              leading: CircleAvatar(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(dummyData[i].avatarUrl),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    dummyData[i].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    dummyData[i].time,
                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                  ),
                ],
              ),
              subtitle: Container(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  dummyData[i].message,
                  style: TextStyle(color: Colors.grey, fontSize: 15.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({this.name, this.message, this.time, this.avatarUrl});
}

List<ChatModel> dummyData = [
  ChatModel(
      name: "Bikal Thapa",
      message: "Hello chat ui",
      time: "10:34",
      avatarUrl:
          "https://api.time.com/wp-content/uploads/2017/12/terry-crews-person-of-year-2017-time-magazine-2.jpg?w=800&quality=85"),
  ChatModel(
      name: "Neeraj Neupane",
      message: "Hi when should we fix meeting",
      time: "6:20",
      avatarUrl:
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8&ixlib=rb-1.2.1&w=1000&q=80"),
  ChatModel(
      name: "Prem Pun",
      message: "Hi Binay",
      time: "7:40",
      avatarUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOihucDAJFX1CSF7d1YWC01spLTfkjAemRdA&usqp=CAU"),
  ChatModel(
      name: "Bipin Pandey",
      message: "Hello",
      time: "1:10",
      avatarUrl:
          "https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80"),
  ChatModel(
      name: "Manjar Hussain",
      message: "Hello Binay Can we talk",
      time: "4:00",
      avatarUrl:
          "https://images.unsplash.com/photo-1548543604-a87c9909abec?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTQ5fHxwZXJzb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
  ChatModel(
      name: "Henric Siemsen",
      message: "Binay can we have a chat",
      time: "3:15",
      avatarUrl:
          "https://images.unsplash.com/photo-1554151228-14d9def656e4?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8cGVyc29ufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
];
