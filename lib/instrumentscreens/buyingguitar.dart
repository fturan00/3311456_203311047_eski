import 'package:flutter/material.dart';
import 'package:flutter_application_1/userinfo.dart';

class buyingguitar extends StatefulWidget {
  var imageguitar;
  buyingguitar({this.imageguitar});

  @override
  State<buyingguitar> createState() => _buyingguitarState();
}

class _buyingguitarState extends State<buyingguitar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Hero(
                tag: widget.imageguitar,
                child: Container(
                  width: double.infinity,
                  height: 425,
                  decoration: BoxDecoration(
                    borderRadius: new BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    image: DecorationImage(
                        image: AssetImage(widget.imageguitar),
                        fit: BoxFit.cover),
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
                        "Solid sitka ladin",
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
                        "Maun",
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
                        "Length:",
                        style: TextStyle(
                            fontFamily: 'CoveredByYourGrace',
                            fontSize: 22,
                            color: Colors.black),
                      ),
                      SizedBox(width: 8),
                      Text(
                        '26"',
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
                        "Curtains:",
                        style: TextStyle(
                            fontFamily: 'CoveredByYourGrace',
                            fontSize: 22,
                            color: Colors.black),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "21",
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
                        "Acoustic",
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
                            width: 60,
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
                              Color(0xffef6c00),
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
