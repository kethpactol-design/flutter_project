import 'package:flutter/material.dart';
import 'package:mynewapp/page2.dart';

class FourthPage extends StatefulWidget {
  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  // const FourthPage({super.key});
  TextEditingController sampleText = new TextEditingController();

  TextEditingController sampleText2 = new TextEditingController();

  var username = "";
  var password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Profile Icon
          CircleAvatar(
            radius: 55,
            backgroundImage: AssetImage("assets/image/naruto_avatar.jpg"),
            ),
          SizedBox(height: 10),
          Text(
            "Profile",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30),

          TextField(
            controller: sampleText,
            decoration: InputDecoration(
              hint: Text("Username"),
              icon: Icon(Icons.person),
              fillColor: Colors.lightBlueAccent,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          SizedBox(height: 10,
          ),

          TextField(
            controller: sampleText2,
            decoration: InputDecoration(
              hint: Text("Password"),
              icon: Icon(Icons.lock),
              fillColor: Colors.lightBlueAccent,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),

          SizedBox(height: 10,
          ),
          ElevatedButton(onPressed: (){
            print(sampleText.text);
            setState(() {
              username=sampleText.text;
              password=sampleText2.text;
            });

            if (username == "Nostalgic" && password == "Nostalgic123") {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
            }
            else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Wrong Username or Password"),
                ),
              );
              print("Login Failed");
            }
          }, child: Text("Login")),
        ],

      ),
    );
  }
}