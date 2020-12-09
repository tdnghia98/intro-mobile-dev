import 'package:demo/components/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 101, 120, 86),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 120.0,
                backgroundImage: AssetImage('assets/demo avt.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Jordan Wyll",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    letterSpacing: 2.0,
                    fontFamily: 'Nerko One',
                  ),
                ),
              ),
              SizedBox(
                height: 140.0,
              ),
              Divider(
                color: Colors.white,
                thickness: 1.0,
                indent: 50.0,
                endIndent: 50.0,
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: CustomCard(
                  content: "011 54 879 65",
                  icon: Icons.phone,
                  onTap: onPhoneNumberTap,
                ),
              ),
              CustomCard(
                content: "@wyll.jordan",
                icon: Icons.email,
                onTap: onEmailTap,
              )
            ],
          ),
        ),
      ),
    );
  }

  void onPhoneNumberTap() async {
    var url = "tel:+1 555 010 999";
    if (await canLaunch(url)) {
      print("Calling");
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void onEmailTap() {
    print("Sending email");
  }
}
