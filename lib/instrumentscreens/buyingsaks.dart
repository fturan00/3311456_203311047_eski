import 'package:flutter/material.dart';
import 'package:flutter_application_1/userinfo.dart';

class buyingsaks extends StatefulWidget {
  var imagesaks;
  buyingsaks({this.imagesaks});

  @override
  State<buyingsaks> createState() => _buyingsaksState();
}

class _buyingsaksState extends State<buyingsaks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Hero(
            tag: widget.imagesaks,
            child: Container(
              width: double.infinity,
              height: 425,
              decoration: BoxDecoration(
                borderRadius: new BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                image: DecorationImage(
                    image: AssetImage(widget.imagesaks), fit: BoxFit.cover),
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
                    "Elto",
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
                    "Golden yellow",
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
                    "Hanger link:",
                    style: TextStyle(
                        fontFamily: 'CoveredByYourGrace',
                        fontSize: 22,
                        color: Colors.black),
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Steel",
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
                    "Auxiliary key:",
                    style: TextStyle(
                        fontFamily: 'CoveredByYourGrace',
                        fontSize: 22,
                        color: Colors.black),
                  ),
                  SizedBox(width: 8),
                  Text(
                    "High F#",
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
                    "Processing:",
                    style: TextStyle(
                        fontFamily: 'CoveredByYourGrace',
                        fontSize: 22,
                        color: Colors.black),
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Hand mader",
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
                          Color(0xffffc107),
                          Color(0xffffab00),
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
