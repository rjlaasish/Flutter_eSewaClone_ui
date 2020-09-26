import 'package:flutter/material.dart';

class TopBalancepart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
          child: Container(
            width: screenWidth * 0.95,
            height: screenHeight * 0.25,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.account_balance_wallet,
                                size: 32.0,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "RS.",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12.0),
                                      ),
                                      Text("1201.16",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0))
                                    ],
                                  ),
                                  Text("Reward Point",
                                      style: TextStyle(fontSize: 8.0))
                                ],
                              ),
                            ],
                          ),
                        ),
                        VerticalDivider(
                          indent: 10.0,
                          endIndent: 10.0,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.add_to_home_screen,
                                size: 32.0,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "131",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text("Reward Point",
                                      style: TextStyle(fontSize: 8.0))
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    indent: 20.0,
                    endIndent: 20.0,
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.monetization_on,
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
                        VerticalDivider(
                          width: 5.0,
                          indent: 15.0,
                          endIndent: 15.0,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.mobile_screen_share,
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
                        VerticalDivider(
                          width: 5.0,
                          indent: 15.0,
                          endIndent: 15.0,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.account_balance,
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
                        VerticalDivider(
                          width: 5.0,
                          indent: 15.0,
                          endIndent: 15.0,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.money_off,
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
