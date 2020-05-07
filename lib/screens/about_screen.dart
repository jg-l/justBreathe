import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:just_breathe/constants/ui.dart';
import 'package:just_breathe/generated/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key key}) : super(key: key);

  Future<void> _launchEmailClient() async {
    const url = 'mailto:$devEmail?subject=justBreathe';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Could not launch $url');
    }
  }

  Future<void> _launchWebsite() async {
    const url = 'https://$productSite';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: IconButton(
          icon: Icon(Feather.arrow_down),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  appTitle,
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(height: 12.0),
                Text(
                  S.of(context).aboutBlurb,
                  textAlign: TextAlign.center,
                ),
                FlatButton(
                  child: Text(S.of(context).websiteButton),
                  onPressed: () async => _launchWebsite(),
                ),
                SizedBox(height: 12),
                Wrap(
                  children: <Widget>[
                    FlatButton(
                      child: Text(S.of(context).attributonButton),
                      onPressed: () => showLicensePage(context: context),
                    ),
                    FlatButton(
                      child: Text(S.of(context).contactButton),
                      onPressed: () async => _launchEmailClient(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
