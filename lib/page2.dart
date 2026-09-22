import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  ImageStack(imagefile, textval) => Stack(
    alignment: AlignmentGeometry.bottomLeft,
    children: [
      Container(
        margin: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Image.asset(
          imagefile,
          width: 200,
          height: 200,
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 25),
        child: Text(textval,
          style: TextStyle(color: Colors.white, fontSize: 15),),
      ),
    ],
  );


  PostCon(profimage, name, bio, imagepost) => Container(
    child:
    Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 10, left: 10),
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(profimage),
              ),
            ),
            Container(
              child: Text(name,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,

                ),
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.centerLeft,
          child: Text(
            bio,
          ),
        ),

        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Image.asset(
            imagepost,

          ),
        ),
      ],
    ),
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20, right: 20, left: 10),
              alignment: Alignment.centerLeft,
              child: Text("Facebook Imitation",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ImageStack("assets/image/uhb.jpg", "Car"),
                  ImageStack("assets/image/images (3).jpg", "Madara"),
                  ImageStack("assets/image/image (5).jpg", "Luffy"),
                ],
              ),
            ),

            SizedBox(height: 50),

            PostCon(
                "assets/image/uhb.jpg",
                "Lex",
                "Flexing my Lambo!",
                "assets/image/uhb.jpg"
            ),

            SizedBox(height: 30),

            PostCon(
                "assets/image/images (3).jpg",
                "Guy",
                "I Madara declare you the strongest of them all!",
                "assets/image/images (2).jpg"
            ),

            SizedBox(height: 30),

            PostCon(
              "assets/image/image (5).jpg",
              "Monkey D.",
              "I'm going to become the King of the Pirates!",
              "assets/image/images (1).jpg",
            ),

            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}