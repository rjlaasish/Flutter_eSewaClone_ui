import 'package:flutter/material.dart';

class PaymentOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
          child: Container(
            width: screenWidth * 0.95,
            // height: screenHeight * 0.25,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.exit_to_app,
                            color: Colors.green,
                          ),
                          Text("Load",
                              style: TextStyle(
                                fontSize: 10.0,
                              )),
                          Text("Money",
                              style: TextStyle(
                                fontSize: 10.0,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.add_to_queue,
                            color: Colors.green,
                          ),
                          Text("Send",
                              style: TextStyle(
                                fontSize: 10.0,
                              )),
                          Text("Money",
                              style: TextStyle(
                                fontSize: 10.0,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.whatshot,
                            color: Colors.green,
                          ),
                          Text("Bank",
                              style: TextStyle(
                                fontSize: 10.0,
                              )),
                          Text("Transfer",
                              style: TextStyle(
                                fontSize: 10.0,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.wifi,
                            color: Colors.green,
                          ),
                          Text("Remittance",
                              style: TextStyle(
                                fontSize: 10.0,
                              ))
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.directions_bus,
                            color: Colors.green,
                          ),
                          Text("Load",
                              style: TextStyle(
                                fontSize: 10.0,
                              )),
                          Text("Money",
                              style: TextStyle(
                                fontSize: 10.0,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.airplanemode_active,
                            color: Colors.green,
                          ),
                          Text("Send",
                              style: TextStyle(
                                fontSize: 10.0,
                              )),
                          Text("Money",
                              style: TextStyle(
                                fontSize: 10.0,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.live_tv,
                            color: Colors.green,
                          ),
                          Text("Bank",
                              style: TextStyle(
                                fontSize: 10.0,
                              )),
                          Text("Transfer",
                              style: TextStyle(
                                fontSize: 10.0,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.credit_card,
                            color: Colors.green,
                          ),
                          Text("Remittance",
                              style: TextStyle(
                                fontSize: 10.0,
                              ))
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RaisedButton(
                        child: Row(
                          children: [
                            Text(
                              "View More ",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.green,
                            )
                          ],
                        ),
                        color: Colors.green[100],
                        onPressed: () {},
                        elevation: 0.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
