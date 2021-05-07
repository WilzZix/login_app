import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/parser.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_app/Screens/Welcome/Login/login_screen.dart';
import 'package:login_app/Screens/Welcome/SignUp/components/background.dart';
import 'package:login_app/Screens/Welcome/SignUp/components/or_divider.dart';
import 'package:login_app/Screens/Welcome/SignUp/components/social_icon.dart';
import 'package:login_app/components/already_have_an_account.dart';
import 'package:login_app/components/roundded_input_field.dart';
import 'package:login_app/components/rounded_button.dart';
import 'package:login_app/components/rounded_password_field.dart';
import 'package:login_app/constants.dart';

class Body extends StatelessWidget {
  final Widget child;

  const Body({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGN UP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              'assets/icons/signup.svg',
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: 'Your email',
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              press: () {},
              text: "SIGN UP",
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccount(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      {
                        return LoginScreen();
                      }
                    },
                  ),
                );
              },
            ),
            OrDevider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialMedia(
                  iconSrc: 'assets/icons/facebook.svg',
                  press: () {},
                ),
                SocialMedia(
                  iconSrc: 'assets/icons/google-plus.svg',
                  press: () {},
                ),
                SocialMedia(
                  iconSrc: 'assets/icons/twitter.svg',
                  press: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
