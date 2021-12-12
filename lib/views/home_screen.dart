import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:potato_foods/components/constants.dart';
import 'package:potato_foods/controllers/auth_controller.dart';
import 'package:potato_foods/controllers/fire_controller.dart';
import 'package:potato_foods/views/landing_page.dart';
import 'package:potato_foods/widgets/app_bar_header.dart';
import 'package:potato_foods/widgets/matter_button.dart';
import 'package:potato_foods/widgets/tl_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  static const List<Widget> _screenOptions = <Widget>[
    Landing(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ConstAnts.nearlyWhite,
        body: Container(
          color: ConstAnts.nearlyWhite,
          child: _screenOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: ConstAnts.nearlyWhite,
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: ConstAnts.darkText.withOpacity(.1),
                  offset: const Offset(-1, -1),
                )
              ],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(11),
                topRight: Radius.circular(11),
              )),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 21.0,
              vertical: 15,
            ),
            child: GNav(
              rippleColor: ConstAnts.lightText,
              hoverColor: ConstAnts.lightText,
              gap: 11,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              activeColor: ConstAnts.nearlyBlack,
              iconSize: 20,
              padding: const EdgeInsets.symmetric(
                horizontal: 21,
                vertical: 11,
              ),
              duration: const Duration(milliseconds: 330),
              tabBackgroundColor: ConstAnts.lightText,
              color: ConstAnts.medicalGreen,
              tabs: const [
                GButton(
                  icon: FontAwesomeIcons.home,
                  text: 'Discover',
                ),
                GButton(
                  icon: FontAwesomeIcons.heart,
                  text: 'Saved',
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
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  //? if signed-in populate Account info, else show sign-up invite

  @override
  Widget build(BuildContext context) {
    final _authCtrl = Get.find<AuthController>();

    var sSize = MediaQuery.of(context).size;
    return SizedBox(
      width: sSize.width,
      height: sSize.height,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width * .033,
          ),
          AppBarHeadR(
            user: '${_authCtrl.displayName}\'s recipes',
            profilePic: 'assets/images/dev2.png',
          ),
          const Expanded(
            child: ProfileInfoPage(),
          ),
        ],
      ),
    );
  }
}

class ProfileInfoPage extends StatelessWidget {
  const ProfileInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var screenSize = MediaQuery.of(context).size;

    return const SignInInvite();
    //? if has liked recipes populate grid, else show suggestion
    //! if firestore document has favourite to false, show this prompt
    //     Center(
    //   child: DialogText(
    //     screenSize: screenSize,
    //     align: Alignment.center,
    //     text1: 'Like recipes to',
    //     text2: "Save them for later",
    //   ),
    // );
  }
}

class FavRecipes extends StatelessWidget {
  const FavRecipes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FirestoreController>(builder: ($) {
      return GridView.builder(
        shrinkWrap: true,
        itemCount: $.repo.length,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 5.0,
        ),
        itemBuilder: (_, index) => GestureDetector(
          onTap: () {
            Get.offAndToNamed(
              '/detail',
              // ignore: todo
              //TODO: Route grid cards to details
              arguments: [
                $.repo[index].name,
                $.repo[index].describe,
                $.repo[index].image,
                $.repo[index].prepTime,
                $.repo[index].cookTime,
                $.repo[index].ingredients,
                $.repo[index].method,
              ],
            );
          },
          child: TLCard(
            screenSize: MediaQuery.of(context).size,
            borderRadi: 9,
            image: $.repo[index].image,
            name: $.repo[index].name,
            description: $.repo[index].cookTime.toString(),
          ),
        ),
      );
    });
  }
}

class SignInInvite extends StatelessWidget {
  const SignInInvite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 77,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 11,
          ),
          child: Text(
            'Log in or create an account and \nSave your favourite recipes here',
            style: GoogleFonts.varelaRound(
              textStyle: const TextStyle(
                fontSize: 21,
                color: ConstAnts.medicalGreen,
              ),
            ),
          ),
        ),
        SvgPicture.asset(
          'assets/svg/eating_together.svg',
          height: 222,
          width: 222,
        ),
        const SizedBox(
          height: 77,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Buton(
              label: 'Sign Up',
              screenSize: screenSize,
              press: () => Get.toNamed(
                '/signUp',
                // ignore: todo
              ), //TODO: Route main sign-up to save recipes button
              heigHt: 39,
              widTh: 133,
              bColOr: ConstAnts.medicalGreen,
            ),
            const SizedBox(
              width: 33,
            ),
            Buton(
              label: 'Sign In',
              screenSize: screenSize,
              press: () => Get.toNamed(
                '/signIn',
                // ignore: todo
              ), //TODO: Route main sign-in to save recipes button
              heigHt: 39,
              widTh: 133,
              bColOr: ConstAnts.medicalGreen,
            ),
          ],
        ),
        const SizedBox(
          height: 77,
        ),
      ],
    );
  }
}
