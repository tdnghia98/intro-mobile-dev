import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String content;
  final IconData icon;
  final Function onTap;

  const CustomCard({Key key, this.content, this.onTap, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: InkWell(
            onTap: onTap,
            child: Row(
              children: [
                Icon(
                  icon,
                  color: Color(0xFF537B34),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Text(
                  content,
                  style: TextStyle(
                    color: Color(0xFF537B34),
                    fontSize: 20.0,
                    letterSpacing: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
