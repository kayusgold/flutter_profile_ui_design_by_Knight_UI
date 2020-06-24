import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:profile_ui/screen/profile.dart';

class TheIcons extends StatelessWidget {
  const TheIcons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.0,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 13.0,
            child: Hero(
              tag: "profileImage",
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()),
                  );
                },
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Theme.of(context).accentColor,
                  child: CircleAvatar(
                    radius: 45.0,
                    backgroundImage: AssetImage("assets/images/user2.jpg"),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 35.0,
            left: 135.0,
            child: Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                  child: FaIcon(
                FontAwesomeIcons.solidHeart,
                color: Colors.redAccent,
              )),
            ),
          ),
          Positioned(
            top: 27.0,
            left: 200.0,
            child: Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                  child: FaIcon(
                FontAwesomeIcons.envelope,
                color: Theme.of(context).primaryColor,
              )),
            ),
          ),
          Positioned(
            top: 18.0,
            left: 265.0,
            child: Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: FaIcon(
                  FontAwesomeIcons.ellipsisH,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
          Positioned(
            top: 130.0,
            left: 0.0,
            child: Text(
              "Amet minim mollit non deserunt",
              style: TextStyle(
                  color: Color(0xFF909C9E),
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "John Stories",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
