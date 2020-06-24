import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:profile_ui/widgets/circular_icon.dart';
import 'package:profile_ui/widgets/profile_container.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF3BBB39),
        body: Row(
          children: <Widget>[
            Container(
              color: Theme.of(context).primaryColor,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width * 0.84,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    child: Row(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 25.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Hero(
                    tag: "profilePicture",
                    child: CircleAvatar(
                      radius: 70.0,
                      backgroundColor: Theme.of(context).accentColor,
                      child: CircleAvatar(
                        radius: 65.0,
                        backgroundImage: AssetImage("assets/images/user2.jpg"),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    'John',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.4),
                  ),
                  SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            "529",
                            style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.4),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            "Followers",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.1,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            "126",
                            style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.4),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            "Following",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.1,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            "29",
                            style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.4),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            "Posts",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.1,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30.0),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: ListView(
                        children: <Widget>[
                          ProfileContainer(
                            title: 'Locatior',
                            body:
                                'Amet minim mollit non deserunt ullamco est s',
                          ),
                          SizedBox(height: 15.0),
                          ProfileContainer(
                            title: 'Phone',
                            body: '0215325123',
                          ),
                          SizedBox(height: 15.0),
                          ProfileContainer(
                            title: 'Info',
                            body:
                                'Amet minim mollit non deserunt ullamco est s...',
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    CircularIcon(
                      icon: FaIcon(
                        FontAwesomeIcons.solidHeart,
                        color: Colors.white,
                        size: 20,
                      ),
                      bgcolor: Theme.of(context).primaryColor,
                    ),
                    SizedBox(height: 10.0),
                    CircularIcon(
                      icon: FaIcon(
                        FontAwesomeIcons.envelope,
                        color: Colors.white,
                        size: 20,
                      ),
                      bgcolor: Theme.of(context).primaryColor,
                    ),
                    SizedBox(height: 10.0),
                    CircularIcon(
                      icon: FaIcon(
                        FontAwesomeIcons.ellipsisH,
                        color: Colors.white,
                        size: 20,
                      ),
                      bgcolor: Theme.of(context).primaryColor,
                    ),
                    SizedBox(height: 5.0),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
