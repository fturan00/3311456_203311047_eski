import 'package:flutter/material.dart';
import 'package:flutter_application_1/userinfo.dart';

class buying extends StatefulWidget {
  var image;
  buying({this.image});

  @override
  State<buying> createState() => _buyingState();
}

class _buyingState extends State<buying> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Hero(
                tag: widget.image,
                child: Container(
                  width: double.infinity,
                  height: 470,
                  decoration: BoxDecoration(
                    borderRadius: new BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    image: DecorationImage(
                        image: AssetImage(widget.image), fit: BoxFit.cover),
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
                        "Color:",
                        style: TextStyle(
                            fontFamily: 'CoveredByYourGrace',
                            fontSize: 22,
                            color: Colors.black),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Matrix emerald green",
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
                        "Number of Wires:",
                        style: TextStyle(
                            fontFamily: 'CoveredByYourGrace',
                            fontSize: 22,
                            color: Colors.black),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "6",
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
                        "24.5",
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
                        "Controls:",
                        style: TextStyle(
                            fontFamily: 'CoveredByYourGrace',
                            fontSize: 22,
                            color: Colors.black),
                      ),
                      SizedBox(width: 8),
                      Text(
                        " 2x volume, 1x master tone",
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
                              Color.fromARGB(255, 65, 194, 69),
                              Colors.blue,
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
