import 'package:flutter/material.dart';
import 'package:flutter_application_1/userinfo.dart';

class buyingakord extends StatefulWidget {
  var imageakord;
  buyingakord({this.imageakord});

  @override
  State<buyingakord> createState() => _buyingakordState();
}

class _buyingakordState extends State<buyingakord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Hero(
            tag: widget.imageakord,
            child: Container(
              width: double.infinity,
              height: 425,
              decoration: BoxDecoration(
                borderRadius: new BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                image: DecorationImage(
                    image: AssetImage(widget.imageakord), fit: BoxFit.cover),
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
                    "Class:",
                    style: TextStyle(
                        fontFamily: 'CoveredByYourGrace',
                        fontSize: 22,
                        color: Colors.black),
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Chromatic",
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
                    "Devil red",
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
                    "Number of Notes:",
                    style: TextStyle(
                        fontFamily: 'CoveredByYourGrace',
                        fontSize: 22,
                        color: Colors.black),
                  ),
                  SizedBox(width: 8),
                  Text(
                    "34",
                    style: TextStyle(
                      fontFamily: 'Galdeano',
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Divider(color: Color(0xffef5350), indent: 48, endIndent: 48),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    "Lowest note:",
                    style: TextStyle(
                        fontFamily: 'CoveredByYourGrace',
                        fontSize: 22,
                        color: Colors.black),
                  ),
                  SizedBox(width: 8),
                  Text(
                    "F",
                    style: TextStyle(
                      fontFamily: 'Galdeano',
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(width: 28),
                  Text(
                    "Highest note",
                    style: TextStyle(
                        fontFamily: 'CoveredByYourGrace',
                        fontSize: 22,
                        color: Colors.black),
                  ),
                  SizedBox(width: 8),
                  Text(
                    "E",
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
                    "Weight:",
                    style: TextStyle(
                        fontFamily: 'CoveredByYourGrace',
                        fontSize: 22,
                        color: Colors.black),
                  ),
                  SizedBox(width: 8),
                  Text(
                    "9kg",
                    style: TextStyle(
                      fontFamily: 'Galdeano',
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(width: 24),
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
                          Color(0xffd50000),
                          Color(0xffef5350),
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
    );
  }
}
