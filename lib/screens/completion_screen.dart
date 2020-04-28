import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_breathe/constants/theme.dart';
import 'package:just_breathe/constants/ui.dart';
import 'package:just_breathe/data/quotes.dart';
import 'package:just_breathe/pages_routes.dart';
import 'package:just_breathe/screens/main_screen.dart';
import 'package:just_breathe/utils/utils.dart';
import 'package:styled_widget/styled_widget.dart';

class CompletionScreen extends StatelessWidget {
  const CompletionScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Quote quote = getQuote();
    return Container(
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Image(image: AssetImage('assets/images/c1.png')),
                Text(
                  '“${quote.body}”',
                  style: Theme.of(context)
                      .textTheme
                      .title
                      .copyWith(fontStyle: FontStyle.italic),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 12.0),
                Text(
                  quote.author,
                  textAlign: TextAlign.right,
                  style: Theme.of(context).textTheme.subhead,
                ),
                SizedBox(height: 36.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 21.0),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(68.0)),
                    color: Theme.of(context).accentColor,
                    onPressed: () {
                      Navigator.of(context).pushReplacement(PageRoutes.fade(
                        () => MainScreen(
                          startingAnimation: false,
                        ),
                        milliseconds: 800,
                      ));
                    },
                    child: Text(
                      homeButtonText.toUpperCase(),
                      style: GoogleFonts.varelaRound(
                        color: fgDark,
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ).padding(all: 18.0),
                  ),
                )
              ],
            ).padding(horizontal: 48.0),
          ),
        ),
      ),
    );
  }
}