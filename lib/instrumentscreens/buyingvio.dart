import 'package:flutter/material.dart';
import 'package:flutter_application_1/userinfo.dart';

class buyingvio extends StatefulWidget {
  var imagevio;
  buyingvio({this.imagevio});

  @override
  State<buyingvio> createState() => _buyingvioState();
}

class _buyingvioState extends State<buyingvio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Hero(
                tag: widget.imagevio,
                child: Container(
                  width: double.infinity,
                  height: 470,
                  decoration: BoxDecoration(
                    borderRadius: new BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    image: DecorationImage(
                        image: AssetImage(widget.imagevio), fit: BoxFit.cover),
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    "technical features",
                    style: TextStyle(
                      fontFamily: 'LibreBarcode128',
                      fontSize: 50,
                    ),
                  ),
                  Divider(color: Colors.black, indent: 48, endIndent: 48),
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "Body:",
                        style: TextStyle(
                            fontFamily: 'CoveredByYourGrace',
                            fontSize: 22,
                            color: Colors.black),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Spruce",
                        style: TextStyle(
                          fontFamily: 'Galdeano',
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "Neck:",
                        style: TextStyle(
                            fontFamily: 'CoveredByYourGrace',
                            fontSize: 22,
                            color: Colors.black),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Maple",
                        style: TextStyle(
                          fontFamily: 'Galdeano',
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "Measurement:",
                        style: TextStyle(
                            fontFamily: 'CoveredByYourGrace',
                            fontSize: 22,
                            color: Colors.black),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "4/4",
                        style: TextStyle(
                          fontFamily: 'Galdeano',
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "Keyboard:",
                        style: TextStyle(
                            fontFamily: 'CoveredByYourGrace',
                            fontSize: 22,
                            color: Colors.black),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Composite",
                        style: TextStyle(
                          fontFamily: 'Galdeano',
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "Type:",
                        style: TextStyle(
                            fontFamily: 'CoveredByYourGrace',
                            fontSize: 22,
                            color: Colors.black),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Classic",
                        style: TextStyle(
                          fontFamily: 'Galdeano',
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(
                              Icons.arrow_back_rounded,
                              size: 27,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xffd84315),
                              Colors.black,
                            ],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            onSurface: Colors.transparent,
                            shadowColor: Colors.transparent,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => userinfo())));
                            print("Buy now");
                          },
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Buy now",
                              style: TextStyle(
                                  fontFamily: 'Galdeano',
                                  color: Colors.white,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
