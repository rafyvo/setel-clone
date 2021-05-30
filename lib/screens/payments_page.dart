import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shape_of_view/shape_of_view.dart';

class PaymentsPage extends StatefulWidget {
  @override
  _PaymentsPageState createState() => _PaymentsPageState();
}

class _PaymentsPageState extends State<PaymentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Container(
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            ShapeOfView(
              shape: ArcShape(
                  direction: ArcDirection.Outside,
                  height: 50,
                  position: ArcPosition.Bottom),
              child: Container(
                color: Colors.deepPurpleAccent,
                height: 250,
              ),
            ),
            Column(
              children: [
                SizedBox(height: 40),
                Center(
                  child: Text(
                    "Set up payment",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black87,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 1,
                            ),
                          ],
                        ),
                        margin: EdgeInsets.all(20),
                        padding: EdgeInsets.all(10),
                        width: 350,
                        height: 370,
                        child: Column(
                          children: [
                            SizedBox(height: 30),
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/images/creditcard icon.png",
                              ),
                              backgroundColor: Colors.white,
                              radius: 35,
                            ),
                            SizedBox(height: 30),
                            Text(
                              "LET'S GET YOU STARTED",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Before using Setel, how do you \nusually pay for fuel?",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              height: 50,
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.black,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white.withOpacity(0.2),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.money),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "Cash                     ",
                                      ),
                                    ],
                                  ),
                                  Icon(Icons.arrow_forward),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              height: 50,
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.black,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white.withOpacity(0.2),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.credit_card),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text("Credit/Debit Card"),
                                    ],
                                  ),
                                  Icon(Icons.arrow_forward),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "SKIP FOR NOW",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print('Privacy Policy"');
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
