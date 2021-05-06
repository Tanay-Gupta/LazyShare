import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(29)),
                  child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_sharp,
                      ),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.pushNamed(context, "/");
                      }),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Center(
                child: Text(
                  "Designed By Tanay Gupta ",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Center(
                child: Text(
                  "Page In Development Contact @tanaywhocodes ",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
