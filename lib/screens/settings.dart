import 'package:flutter/material.dart';
import 'package:lazyshare/utils/shareicon.dart';
import 'package:url_launcher/url_launcher.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
        child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          colors: [
            Colors.teal[900],
            Colors.teal[800],
            Colors.teal[400],
          ],
        ),
      ),
      child: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                  icon: Icon(
                    Icons.arrow_back_sharp,
                  ),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pushNamed(context, "/homepage");
                  }),
            ],
          ),
          Image.asset(
            "assets/images/logo.png",
            fit: BoxFit.fitWidth,
            width: size.width * .25,
          ),
          Text(
            "LazyShare",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: size.height * .05,
          ),
          Expanded(
              child: Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60),
                topRight: Radius.circular(60),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
              child: Column(children: [
                SizedBox(height: size.height * .01),
                Text("App version:1.0"),
                SizedBox(height: size.height * .02),
                Divider(),
                SizedBox(height: size.height * .02),
                Text(
                  "Contact Developer",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: size.height * .03),
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://instagram.flko7-1.fna.fbcdn.net/v/t51.2885-19/s320x320/134457862_154093409809374_4723753709061827924_n.jpg?tp=1&_nc_ht=instagram.flko7-1.fna.fbcdn.net&_nc_ohc=49ZwsrZcIiUAX-co618&edm=ABfd0MgBAAAA&ccb=7-4&oh=0a50b1a8df7a48fbfbad793d28897bf2&oe=60C208D1&_nc_sid=7bff83'),
                        fit: BoxFit.fill),
                  ),
                ),
                SizedBox(
                  height: size.height * .02,
                ),
                Text(
                  "Tanay Gupta",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: size.height * .03,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 55, right: 55),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ShareIcon(
                        imageUrl:
                            "https://img.icons8.com/android/144/000000/linkedin.png",
                        url: "https://www.linkedin.com/in/tanay--gupta/",
                      ),
                      ShareIcon(
                        imageUrl:
                            "https://img.icons8.com/metro/104/000000/instagram-new.png",
                        url: "https://www.instagram.com/tanaywhocodes/",
                      ),
                      ShareIcon(
                        imageUrl:
                            "https://img.icons8.com/ios-filled/104/000000/github.png",
                        url: "https://github.com/Tanay-Gupta",
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * .03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Logo Credit:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () {
                          launch("https://www.instagram.com/chai1_0ya");
                        },
                        child: Text("Chaitanya Krishna")),
                  ],
                )
              ]),
            ),
          ))
        ],
      )),
    ));
  }
}
