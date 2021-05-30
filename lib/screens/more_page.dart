import 'package:flutter/material.dart';

import 'package:setel_clone_app/json/more_json.dart';

class MorePage extends StatefulWidget {
  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 50),
                    Text(
                      "Muhammad Rafiuddin",
                      style: TextStyle(fontSize: 22),
                    ),
                    SizedBox(height: 5),
                    Text("EDIT PROFILE", style: TextStyle(color: Colors.blue)),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            IconButton(
                              icon: Icon(Icons.circle),
                              iconSize: 80,
                              onPressed: () {},
                              splashColor: Colors.white10,
                              splashRadius: 75,
                            ),
                            Text("Refer a friend"),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              icon: Icon(Icons.circle),
                              iconSize: 80,
                              onPressed: () {},
                              splashColor: Colors.white10,
                              splashRadius: 75,
                            ),
                            Text("Submit receipts"),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              icon: Icon(Icons.circle),
                              iconSize: 80,
                              onPressed: () {},
                              splashColor: Colors.white10,
                              splashRadius: 75,
                            ),
                            Text("My vouchers"),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.only(left: 20, bottom: 10),
              child: Text(
                "PAYMENT",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
            Divider(
              height: 3,
              thickness: 1,
              indent: 20,
              endIndent: 10,
            ),
            SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                        children: List.generate(
                      paymentList.length,
                      (index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RaisedButton(
                              color: Colors.black,
                              child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width * 0.90,
                                child: ListTile(
                                  leading: Icon(paymentList[index]["icon"]),
                                  title: Text(paymentList[index]["text"]),
                                  trailing: Icon(Icons.arrow_forward),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  activeTab = index;
                                });
                              },
                            ),
                            Divider(
                              thickness: 1,
                              indent: 80,
                              endIndent: 10,
                            ),
                          ],
                        );
                      },
                    )))),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(left: 20, bottom: 10),
              child: Text(
                "MESRA",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
            Divider(
              height: 3,
              thickness: 1,
              indent: 20,
              endIndent: 10,
            ),
            SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                        children: List.generate(
                      mesraList.length,
                      (index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RaisedButton(
                              color: Colors.black,
                              child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width * 0.90,
                                child: ListTile(
                                  leading: Icon(mesraList[index]["icon"]),
                                  title: Text(mesraList[index]["text"]),
                                  trailing: Icon(Icons.arrow_forward),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  activeTab = index;
                                });
                              },
                            ),
                            Divider(
                              thickness: 1,
                              indent: 80,
                              endIndent: 10,
                            ),
                          ],
                        );
                      },
                    )))),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(left: 20, bottom: 10),
              child: Text(
                "PREFERENCES",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
            Divider(
              height: 3,
              thickness: 1,
              indent: 20,
              endIndent: 10,
            ),
            SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                        children: List.generate(
                      preferencesList.length,
                      (index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RaisedButton(
                              color: Colors.black,
                              child: Container(
                                height: 40,
                                width: MediaQuery.of(context).size.width * 1,
                                child: ListTile(
                                  leading: Icon(preferencesList[index]["icon"]),
                                  title: Text(preferencesList[index]["text"]),
                                  trailing: Icon(Icons.arrow_forward),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  activeTab = index;
                                });
                              },
                            ),
                            Divider(
                              thickness: 1,
                              indent: 80,
                              endIndent: 10,
                            ),
                          ],
                        );
                      },
                    )))),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(left: 20, bottom: 10),
              child: Text(
                "OTHERS",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
            Divider(
              height: 3,
              thickness: 1,
              indent: 20,
              endIndent: 10,
            ),
            SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                        children: List.generate(
                      othersList.length,
                      (index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RaisedButton(
                              color: Colors.black,
                              child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width * 0.90,
                                child: ListTile(
                                  leading: Icon(othersList[index]["icon"]),
                                  title: Text(othersList[index]["text"]),
                                  trailing: Icon(Icons.arrow_forward),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  activeTab = index;
                                });
                              },
                            ),
                            Divider(
                              thickness: 1,
                              indent: 80,
                              endIndent: 10,
                            ),
                          ],
                        );
                      },
                    )))),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 10),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.red,
                ),
                title: Text(
                  "Logout",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
            Divider(
              thickness: 1,
              indent: 80,
              endIndent: 10,
            ),
          ],
        ),
      ),
    );
  }
}
