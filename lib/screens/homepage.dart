import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              child: GoogleMap(
                mapType: MapType.normal,
                myLocationEnabled: true,
                initialCameraPosition:
                    CameraPosition(target: LatLng(3.074110, 101.491960)),
                zoomControlsEnabled: true,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 18,
                        child: IconButton(
                            icon: Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 20,
                            ),
                            onPressed: () {}),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                          height: 35,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18.0),
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 25,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    color: Colors.blue,
                  ),
                  child: Align(child: Text(" ? How to use")),
                ),
                SizedBox(height: 250),
                Container(
                  height: 25,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    color: Colors.black,
                  ),
                  child: Align(
                      child: Text(
                    "Fuel price: RM2.00",
                    style: TextStyle(fontSize: 12),
                  )),
                ),
                SizedBox(height: 5),
                Container(
                  height: 170,
                  width: 350,
                  color: Colors.black,
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Text(
                        "LET'S GET YOU STARTED",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Before using Setel, how do you usually\npay for fuel?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 10),
                      Divider(
                        height: 3,
                        thickness: 1,
                        indent: 20,
                        endIndent: 10,
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      SizedBox(height: 10),
                      Divider(
                        height: 3,
                        thickness: 1,
                        indent: 20,
                        endIndent: 10,
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 50,
                  width: 350,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ));
  }
}
