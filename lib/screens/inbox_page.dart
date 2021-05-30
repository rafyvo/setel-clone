import 'package:flutter/material.dart';

class InboxPage extends StatefulWidget {
  @override
  _InboxPageState createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 45),
          Container(
            padding: EdgeInsets.only(left: 20, bottom: 10),
            child: Text(
              "Inbox",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Divider(
            height: 3,
            thickness: 1,
          ),
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: ScrollPhysics(),
            padding: const EdgeInsets.all(8),
            itemCount: 6,
            itemBuilder: (context, i) {
              return Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.inbox_rounded),
                    trailing: Icon(Icons.arrow_forward),
                    title: Text("List item $i"),
                  ),
                  Divider(
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                  ),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
