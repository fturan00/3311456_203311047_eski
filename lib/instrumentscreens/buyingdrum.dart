import 'package:flutter/material.dart';
import 'package:flutter_application_1/userinfo.dart';

class buyingdrum extends StatefulWidget {
  var imagedrum;
  buyingdrum({this.imagedrum});

  @override
  State<buyingdrum> createState() => _buyingdrumState();
}

class _buyingdrumState extends State<buyingdrum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Hero(
            tag: widget.imagedrum,
            child: Container(
              width: double.infinity,
              height: 425,
              decoration: BoxDecoration(
                borderRadius: new BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                image: DecorationImage(
                    image: AssetImage(widget.imagedrum), fit: BoxFit.cover),
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
                    "Material:",
                    style: TextStyle(
                        fontFamily: 'CoveredByYourGrace',
                        fontSize: 22,
                        color: Colors.black),
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Alder",
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
                    "Cloud blue",
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
                    "Number of Pieces:",
                    style: TextStyle(
                        fontFamily: 'CoveredByYourGrace',
                        fontSize: 22,
                        color: Colors.black),
                  ),
                  SizedBox(width: 8),
                  Text(
                    "5",
                    style: TextStyle(
                      fontFamily: 'Galdeano',
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Divider(color: Colors.lightBlueAccent, indent: 48, endIndent: 48),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    "Trampet:",
                    style: TextStyle(
                        fontFamily: 'CoveredByYourGrace',
                        fontSize: 22,
                        color: Colors.black),
                  ),
                  SizedBox(width: 8),
                  Text(
                    "5 x 13.5",
                    style: TextStyle(
                      fontFamily: 'Galdeano',
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(width: 28),
                  Text(
                    "Floor Tom:",
                    style: TextStyle(
                        fontFamily: 'CoveredByYourGrace',
                        fontSize: 22,
                        color: Colors.black),
                  ),
                  SizedBox(width: 8),
                  Text(
                    "13 x 17.5",
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
                    "Toms:",
                    style: TextStyle(
                        fontFamily: 'CoveredByYourGrace',
                        fontSize: 22,
                        color: Colors.black),
                  ),
                  SizedBox(width: 8),
                  Text(
                    "7 x 10, 7 x 12",
                    style: TextStyle(
                      fontFamily: 'Galdeano',
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(width: 24),
                  Text(
                    "Kick:",
                    style: TextStyle(
                        fontFamily: 'CoveredByYourGrace',
                        fontSize: 22,
                        color: Colors.black),
                  ),
                  SizedBox(width: 8),
                  Text(
                    "19 x 21",
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
                          Colors.orangeAccent,
                          Colors.blueAccent,
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
