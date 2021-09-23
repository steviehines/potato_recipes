import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:potato_foods/components/theme.dart';
import 'package:potato_foods/views/detail_view.dart';
import 'package:potato_foods/views/landing_page.dart';
import 'package:potato_foods/views/login_opt_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  static const List<Widget> _screenOptions = <Widget>[
    Landing(),
    LoginOptionView(),
    DetailView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: nearlyWhite,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: _screenOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: medicalGreen.withOpacity(.2),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: kDark.withOpacity(.1),
              )
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 21.0,
                vertical: 15,
              ),
              child: GNav(
                rippleColor: dullGrey,
                hoverColor: dullGrey,
                gap: 7,
                activeColor: kDark,
                iconSize: 20,
                padding: const EdgeInsets.symmetric(
                  horizontal: 21,
                  vertical: 11,
                ),
                duration: const Duration(milliseconds: 330),
                tabBackgroundColor: nearlyWhite,
                color: darkText,
                tabs: const [
                  GButton(
                    icon: FontAwesomeIcons.search,
                    text: 'Discover',
                  ),
                  GButton(
                    icon: FontAwesomeIcons.bookmark,
                    text: 'Saved',
                  ),
                  GButton(
                    icon: FontAwesomeIcons.cog,
                    text: 'Settings',
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (_) {
                  setState(
                    () {
                      _selectedIndex = _;
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
