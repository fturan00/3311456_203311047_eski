import 'dart:async';
import 'dart:html';
import 'dart:io';
import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/voicescreens/akord.dart';
import 'package:flutter_application_1/voicescreens/drum.dart';
import 'package:flutter_application_1/voicescreens/guitar.dart';
import 'package:flutter_application_1/voicescreens/saks.dart';
import 'package:flutter_application_1/voicescreens/vio.dart';
import 'package:like_button/like_button.dart';
import 'contacts.dart';
import 'firebase_options.dart';
import 'graphic.dart';
import 'instrumentscreens/buying.dart';
import 'instrumentscreens/buyingakord.dart';
import 'instrumentscreens/buyingdrum.dart';
import 'instrumentscreens/buyingguitar.dart';
import 'instrumentscreens/buyingsaks.dart';
import 'instrumentscreens/buyingvio.dart';
import 'loginpage.dart';
import 'saved.dart';
import 'package:rive/rive.dart';

import 'voicescreens/electro.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 10,
        title: Text(
          "music utopia",
          style: TextStyle(fontFamily: 'CoveredByYourGrace', fontSize: 26),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => loginpage())));
            },
            icon: const Icon(
              Icons.person_pin,
              size: 32,
            ),
          ),
          SizedBox(
            width: 210,
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => graphic())));
            },
            icon: const Icon(
              Icons.donut_large,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => contacts())));
            },
            icon: const Icon(
              Icons.contacts,
              size: 28,
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
      ),
      body: ListView(
        children: [
          SizedBox(height: 15),
          Container(
            height: 80,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 30,
                ),
                kategoriListesi('images/elektrogitar.png', electro()),
                SizedBox(
                  width: 10,
                ),
                kategoriListesi('images/tuşlu.png', akord()),
                SizedBox(
                  width: 10,
                ),
                kategoriListesi('images/üflemeli.png', saks()),
                SizedBox(
                  width: 10,
                ),
                kategoriListesi('images/gitar.png', guitar()),
                SizedBox(
                  width: 10,
                ),
                kategoriListesi('images/vurmalı.png', drum()),
                SizedBox(
                  width: 10,
                ),
                kategoriListesi('images/keman.png', vio()),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Material(
              borderRadius: BorderRadius.circular(15),
              elevation: 10,
              color: Colors.white,
              child: Container(
                height: 425,
                width: 500,
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      "Matrix Electro-Guitar",
                      style: TextStyle(
                          fontFamily: 'JosefinSans',
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "STG AF-8 Matrix, is part of our matrix private collection. Limited edition now!",
                      style: TextStyle(
                          fontFamily: 'CoveredByYourGrace',
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) =>
                                    buying(image: 'images/elektro3.jpg'))));
                          },
                          child: Hero(
                            tag: 'images/elektro3.jpg',
                            child: Container(
                              height: 290,
                              width:
                                  (MediaQuery.of(context).size.width - 60) / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  image: DecorationImage(
                                      image: AssetImage('images/elektro3.jpg'),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => buying(
                                          image: 'images/elektro1.jpg',
                                        )));
                              },
                              child: Hero(
                                tag: 'images/elektro1.jpg',
                                child: Container(
                                  height: 175,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image:
                                            AssetImage('images/elektro1.jpg'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => buying(
                                          image: 'images/elektro2.jpg',
                                        )));
                              },
                              child: Hero(
                                tag: 'images/elektro2.jpg',
                                child: Container(
                                  height: 110,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image:
                                            AssetImage('images/elektro2.jpg'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 3),
                    Divider(color: Colors.black, indent: 10, endIndent: 12),
                    Row(
                      children: [
                        SizedBox(width: 400),
                        LikeButton(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Material(
              borderRadius: BorderRadius.circular(25),
              elevation: 10,
              color: Colors.lightBlueAccent,
              child: Container(
                height: 450,
                width: 500,
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      "Blue Clouds Acoustic Drum",
                      style: TextStyle(
                          fontFamily: 'JosefinSans',
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Blue Clouds Edition, it will take you above the blue clouds every time you hit a piece!",
                      style: TextStyle(
                          fontFamily: 'CoveredByYourGrace',
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => buyingdrum(
                                    imagedrum: 'images/bateri2.jpg'))));
                          },
                          child: Hero(
                            tag: 'images/bateri2.jpg',
                            child: Container(
                              height: 270,
                              width:
                                  (MediaQuery.of(context).size.width - 60) / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  image: DecorationImage(
                                      image: AssetImage('images/bateri2.jpg'),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => buyingdrum(
                                          imagedrum: 'images/bateri1.jpg',
                                        )));
                              },
                              child: Hero(
                                tag: 'images/bateri1.jpg',
                                child: Container(
                                  height: 175,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage('images/bateri1.jpg'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => buyingdrum(
                                          imagedrum: 'images/bateri3.jpg',
                                        )));
                              },
                              child: Hero(
                                tag: 'images/bateri3.jpg',
                                child: Container(
                                  height: 110,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage('images/bateri3.jpg'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 3),
                    Divider(color: Colors.black, indent: 10, endIndent: 12),
                    Row(
                      children: [
                        SizedBox(width: 400),
                        LikeButton(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Material(
              borderRadius: BorderRadius.circular(25),
              elevation: 10,
              color: Color(0xffc4001d),
              child: Container(
                height: 425,
                width: 500,
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      "Red Devil Chromatic Akordeon",
                      style: TextStyle(
                          fontFamily: 'JosefinSans',
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Red Devil's keys are dangerous and can make your fingers addicted to their keys.!",
                      style: TextStyle(
                        fontFamily: 'CoveredByYourGrace',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => buyingakord(
                                    imageakord: 'images/akordiyon1.jpg'))));
                          },
                          child: Hero(
                            tag: 'images/akordiyon1.jpg',
                            child: Container(
                              height: 270,
                              width:
                                  (MediaQuery.of(context).size.width - 60) / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  image: DecorationImage(
                                      image:
                                          AssetImage('images/akordiyon1.jpg'),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => buyingakord(
                                          imageakord: 'images/akordiyon2.jpg',
                                        )));
                              },
                              child: Hero(
                                tag: 'images/akordiyon2.jpg',
                                child: Container(
                                  height: 165,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image:
                                            AssetImage('images/akordiyon2.jpg'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => buyingakord(
                                          imageakord: 'images/akordiyon3.jpg',
                                        )));
                              },
                              child: Hero(
                                tag: 'images/akordiyon3.jpg',
                                child: Container(
                                  height: 110,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image:
                                            AssetImage('images/akordiyon3.jpg'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 3),
                    Divider(color: Colors.white, indent: 10, endIndent: 12),
                    Row(
                      children: [
                        SizedBox(width: 400),
                        LikeButton(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Material(
              borderRadius: BorderRadius.circular(25),
              elevation: 10,
              color: Color(0xffffbd45),
              child: Container(
                height: 425,
                width: 500,
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      "Gold-Plated Elto Saxophone",
                      style: TextStyle(
                          fontFamily: 'JosefinSans',
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Blow until you're out of breath and see what your breath can do!",
                      style: TextStyle(
                        fontFamily: 'CoveredByYourGrace',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => buyingsaks(
                                    imagesaks: 'images/saksafon3.jpeg'))));
                          },
                          child: Hero(
                            tag: 'images/saksafon3.jpeg',
                            child: Container(
                              height: 270,
                              width:
                                  (MediaQuery.of(context).size.width - 60) / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  image: DecorationImage(
                                      image:
                                          AssetImage('images/saksafon3.jpeg'),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => buyingsaks(
                                          imagesaks: 'images/saksafon1.jpg',
                                        )));
                              },
                              child: Hero(
                                tag: 'images/saksafon1.jpg',
                                child: Container(
                                  height: 165,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image:
                                            AssetImage('images/saksafon1.jpg'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => buyingsaks(
                                          imagesaks: 'images/saksafon2.jpeg',
                                        )));
                              },
                              child: Hero(
                                tag: 'images/saksafon2.jpeg',
                                child: Container(
                                  height: 110,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image:
                                            AssetImage('images/saksafon2.jpeg'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 3),
                    Divider(color: Colors.black, indent: 10, endIndent: 12),
                    Row(
                      children: [
                        SizedBox(width: 400),
                        LikeButton(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Material(
              borderRadius: BorderRadius.circular(25),
              elevation: 10,
              color: Colors.white,
              child: Container(
                height: 425,
                width: 500,
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      "Swan Violin",
                      style: TextStyle(
                        fontFamily: 'JosefinSans',
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "You will feel your arches floating on the strings of the swan violin like a swan!",
                      style: TextStyle(
                        fontFamily: 'CoveredByYourGrace',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => buyingvio(
                                    imagevio: 'images/keman1.jpeg'))));
                          },
                          child: Hero(
                            tag: 'images/keman1.jpeg',
                            child: Container(
                              height: 270,
                              width:
                                  (MediaQuery.of(context).size.width - 60) / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  image: DecorationImage(
                                      image: AssetImage('images/keman1.jpeg'),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => buyingvio(
                                          imagevio: 'images/keman2.jpeg',
                                        )));
                              },
                              child: Hero(
                                tag: 'images/keman2.jpeg',
                                child: Container(
                                  height: 165,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage('images/keman2.jpeg'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => buyingvio(
                                          imagevio: 'images/keman3.jpeg',
                                        )));
                              },
                              child: Hero(
                                tag: 'images/keman3.jpeg',
                                child: Container(
                                  height: 110,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage('images/keman3.jpeg'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 3),
                    Divider(color: Colors.black, indent: 10, endIndent: 12),
                    Row(
                      children: [
                        SizedBox(width: 400),
                        LikeButton(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Material(
              borderRadius: BorderRadius.circular(25),
              elevation: 10,
              color: Color(0xffffbd45),
              child: Container(
                height: 425,
                width: 500,
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      "Imperial Acoustic Guitar",
                      style: TextStyle(
                        fontFamily: 'JosefinSans',
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "It may look like a classical guitar, but it wouldn't feel so good if we didn't have a nice touch to it!",
                      style: TextStyle(
                        fontFamily: 'CoveredByYourGrace',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => buyingguitar(
                                    imageguitar: 'images/gitar1.jpg'))));
                          },
                          child: Hero(
                            tag: 'images/gitar1.jpg',
                            child: Container(
                              height: 270,
                              width:
                                  (MediaQuery.of(context).size.width - 60) / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  image: DecorationImage(
                                      image: AssetImage('images/gitar1.jpg'),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => buyingguitar(
                                          imageguitar: 'images/gitar2.jpg',
                                        )));
                              },
                              child: Hero(
                                tag: 'images/gitar2.jpg',
                                child: Container(
                                  height: 165,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage('images/gitar2.jpg'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => buyingguitar(
                                          imageguitar: 'images/gitar3.jpg',
                                        )));
                              },
                              child: Hero(
                                tag: 'images/gitar3.jpg',
                                child: Container(
                                  height: 110,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage('images/gitar3.jpg'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 3),
                    Divider(
                      color: Colors.white,
                      indent: 10,
                      endIndent: 12,
                      thickness: 1,
                    ),
                    Row(
                      children: [
                        SizedBox(width: 400),
                        LikeButton(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  kategoriListesi(String s, final Widget nextPage) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => nextPage)));
          },
          child: CircleAvatar(
            radius: 32,
            backgroundColor: Color.fromARGB(255, 84, 71, 71),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.black,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                    image: AssetImage(s),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
