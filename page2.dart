import 'package:flutter/material.dart';
import 'Widget/topContainer.dart';
import 'Widget/taskColumn.dart';

import 'package:flutter_login_signup/src/theme/light_colors.dart';
import 'package:flutter_login_signup/src/sidebar.dart';
import 'package:flutter_login_signup/src/searchbar.dart';

class Page2 extends StatelessWidget {
  Text subheading(String title) {
    return Text(
      title,
      style: TextStyle(
          color: LightColors.kDarkBlue,
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.2),
    );
  }

  static CircleAvatar calendarIcon() {
    return CircleAvatar(
      radius: 25.0,
      backgroundColor: LightColors.kGreen,
      child: Icon(
        Icons.calendar_today,
        size: 20.0,
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: LightColors.kLightYellow,
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page2()),
                  );
                },
                icon: Icon(
                  Icons.home,
                  color: Colors.blue[200],
                ),
                iconSize: 25.0,
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchBar()),
                  );
                },
                icon: Icon(
                  Icons.search,
                  color: Colors.blue[200],
                ),
                iconSize: 25.0,
              ),
              IconButton(
                onPressed: () {
                  // You enter here what you want the button to do once the user interacts with it
                },
                icon: Icon(
                  Icons.perm_identity,
                  color: Colors.blue[200],
                ),
                iconSize: 25.0,
              ),
            ],
          ),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TopContainer(
              height: 300,
              width: width,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NavDrawer()),
                            );
                          },
                          icon: Icon(
                            Icons.view_headline,
                            color: LightColors.kDarkBlue,
                          ),
                          iconSize: 25.0,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: LightColors.kBlue,
                          radius: 35.0,
                          backgroundImage: AssetImage(
                            'assets/images/profile.png',
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 0.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  'Good Evening \n Adam',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                child: Text(
                                  'You have 5 new quaratine patients to be \n attended',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    FlatButton(
                                      child: Text(
                                        'MORE DETAILS',
                                        style: TextStyle(fontSize: 8.0),
                                      ),
                                      color: LightColors.kDarkBlue,
                                      textColor: Colors.white,
                                      onPressed: () {},
                                      shape: new RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(30.0)),
                                    ),
                                    SizedBox(width: 20),
                                    FlatButton(
                                      child: Text(
                                        'VIEW YOUR PROFILE',
                                        style: TextStyle(fontSize: 8.0),
                                      ),
                                      color: LightColors.kDarkBlue,
                                      textColor: Colors.white,
                                      onPressed: () {},
                                      shape: new RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(30.0)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      color: Colors.transparent,
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              subheading('Upcoming urgent task'),
                            ],
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          TaskColumn(
                            icon: Icons.blur_circular,
                            iconBackgroundColor: LightColors.kDarkBlue,
                            subheading: 'From Patient',
                            title: 'Order For Observation Form',
                            subtitle: 'Have an apointement today',
                          ),
                          SizedBox(height: 15.0),
                          TaskColumn(
                            icon: Icons.check_circle_outline,
                            iconBackgroundColor: LightColors.kDarkBlue,
                            subheading: 'From Lab',
                            title: 'Done',
                            subtitle: 'Lab Test Results',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
