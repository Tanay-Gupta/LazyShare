import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lazyshare/utils/number_textfield.dart';
import 'package:lazyshare/utils/roundedbutton.dart';
import 'package:lazyshare/utils/text_field.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  //final _formkey = GlobalKey<FormState>();
  final TextEditingController number = TextEditingController();
  //final TextEditingController code = TextEditingController();
  final TextEditingController msg = TextEditingController();
  String code = '+91';
  @override
  Widget build(BuildContext context) {
    //  code.text = '+91';
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 15, 0, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "LazyShare",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 50,
                              fontWeight: FontWeight.w900),
                        ),
                        IconButton(
                            icon: Icon(Icons.settings),
                            onPressed: () {
                              Navigator.pushNamed(context, "/settings");
                            })
                      ],
                    ),
                    SizedBox(
                      height: size.height * .06,
                    ),
                    // Text(
                    //   "SEND WHATSAPP MESSAGES WITHOUT",
                    //   style: TextStyle(
                    //     color: Colors.black,
                    //     fontSize: 12,
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: size.height * .002,
                    // ),
                    // Text(
                    //   "SAVING NUMBERS",
                    //   style: TextStyle(color: Colors.black, fontSize: 12),
                    // )
                  ],
                ),
              ),
              SvgPicture.asset(
                "assets/images/pri.svg",
                fit: BoxFit.fitWidth,
                height: size.height * .25,
              ),
              Expanded(
                child: Container(
                    height: 100,
                    width: double.infinity,
                    //color: Colors.white,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60),
                      ),
                    ),
                    child: SingleChildScrollView(
                      padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: size.height * .02,
                          ),
                          Text(
                            "SEND WHATSAPP MESSAGES WITHOUT",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: size.height * .002,
                          ),
                          Text(
                            "SAVING NUMBERS",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                          SizedBox(
                            height: size.height * .05,
                          ),
                          CodePicker(
                            cnt: number,
                            code: (newValue) {
                              code = newValue.toString();
                            },
                          ),
                          SizedBox(
                            height: size.height * .03,
                          ),
                          RoundedTextField(
                            color: Colors.teal,
                            text: "Enter Message (Optional)",
                            privacy: false,
                            icon: Icons.message,
                            cnt: msg,
                            keybord: TextInputType.text,
                            suffixicon: null,
                          ),
                          SizedBox(
                            height: size.height * .03,
                          ),
                          CircularButton(
                            color: Colors.teal.shade800,
                            text: "SEND",
                            textColor: Colors.white,
                            press: () async {
                              String _url =
                                  "whatsapp://send?text=${msg.text}&phone=$code${number.text}";
                              print(canLaunch(_url));
                              // String _url2 =
                              //     'https://play.google.com/store/apps/details?id=com.whatsapp';
                              if (number.text.isEmpty)
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text("Empty Number Fields !!"),
                                  duration: Duration(seconds: 3),
                                ));
                              else if (number.text.length < 8)
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text("Invalid Number Length !!"),
                                  duration: Duration(seconds: 3),
                                ));
                              else
                                launch(_url);
                            },
                            // press: () async {
                            //   if (_formkey.currentState.validate()) {
                            //     //https://wa.me/whatsappphonenumber/?text=

                            //   }
                            //},
                          ),
                          SizedBox(
                            height: size.height * .15,
                          ),
                          Text(
                            "DESIGNED WITH 🖤 IN INDIA ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: size.height * .02,
                          )
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
