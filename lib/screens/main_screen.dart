import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart' as cupertino;
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_breathe/constants/preset_timers.dart';
import 'package:just_breathe/constants/theme.dart';
import 'package:just_breathe/constants/ui.dart';
import 'package:just_breathe/generated/l10n.dart';
import 'package:just_breathe/pages_routes.dart';
import 'package:just_breathe/providers/settings_provider.dart';
import 'package:just_breathe/screens/about_screen.dart';
import 'package:just_breathe/screens/meditation_screen.dart';
import 'package:just_breathe/widgets/dark_mode_switcher.dart';
import 'package:just_breathe/widgets/settings_card.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  MainScreen({this.startingAnimation = false, Key key}) : super(key: key);

  /// Determins if the starting animation should be played. It should only be played when the app is first launched from quit.
  final bool startingAnimation;

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  AnimationController _scaffold;
  AnimationController _logo;
  Animation<Offset> _animation;
  Animation<Offset> _logoAnimation;
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController();

    _scaffold = AnimationController(
        vsync: this,
        value: widget.startingAnimation ? 0.0 : 1.0,
        duration: Duration(milliseconds: 1800));
    _logo = AnimationController(
        vsync: this,
        value: widget.startingAnimation ? 0.0 : 1.0,
        duration: Duration(milliseconds: 1800));
    _animation =
        Tween<Offset>(begin: Offset(0, 0.25), end: Offset(0, 0)).animate(
      CurvedAnimation(parent: _scaffold, curve: Curves.easeOutQuart),
    );

    _logoAnimation =
        Tween<Offset>(begin: Offset(0, 0.65), end: Offset(0, 0)).animate(
      CurvedAnimation(
        parent: _logo,
        curve: Interval(
          0.25,
          1.0,
          curve: Curves.ease,
        ),
      ),
    );

    if (widget.startingAnimation) {
      _scaffold.forward();
      _logo.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            DarkModeSwitcher(),
          ],
          centerTitle: true,
          title: SlideTransition(
            position: _logoAnimation,
            child: SvgPicture.asset(
              'assets/images/lotus.svg',
              semanticsLabel: '$appTitle logo',
              color: accent,
              fit: BoxFit.contain,
              width: 50,
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                child: SingleChildScrollView(
                  controller: _scrollController,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BreatheModeCard2(
                        title: 'Free',
                        subtitle: 'Follow your intuition and breathe freely',
                        image:
                            'https://images.unsplash.com/photo-1592130672383-00c96d75706b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80',
                      ),
                      BreatheModeCard2(
                        title: 'Box',
                        subtitle:
                            'Instill calm and dispel anxiety by controlling the four corners of breathing.',
                        image:
                            'https://images.unsplash.com/photo-1592634047088-7a1f85644183?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
                      ),
                      BreatheModeCard2(
                        title: 'Wim Hof',
                        subtitle:
                            'Reduce stress, inflammation, and improve breathing efficiency.',
                        image:
                            'https://images.unsplash.com/photo-1485809108442-19e5b56de493?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1652&q=80',
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 4,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BreatheModeCard2 extends StatefulWidget {
  const BreatheModeCard2({
    Key key,
    this.title,
    this.subtitle,
    this.image,
  }) : super(key: key);
  final String title;
  final String subtitle;
  final String image;

  @override
  _BreatheModeCard2State createState() => _BreatheModeCard2State();
}

class _BreatheModeCard2State extends State<BreatheModeCard2>
    with TickerProviderStateMixin {
  bool isOpen = false;
  bool isSelected = false;
  AnimationController _controller;
  Animation<double> _animation;

  initState() {
    super.initState();

    _controller = AnimationController(
        duration: const Duration(milliseconds: 5000),
        vsync: this,
        value: 0,
        lowerBound: 0,
        upperBound: 1);
    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.bounceInOut);

    _controller.forward();
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isOpen = !isOpen;
          isSelected = !isSelected;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 400),
        margin: EdgeInsets.all(36.0),
        decoration: BoxDecoration(
          color: Theme.of(context).canvasColor,
          borderRadius: BorderRadius.circular(36.0),
          boxShadow: [
            BoxShadow(
              spreadRadius: !isSelected ? 0 : 0.8,
              color: Colors.black.withOpacity(0.15),
              blurRadius: !isSelected ? 0 : 12.0,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(36.0)),
              child: Image.network(
                widget.image,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 7,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: Theme.of(context).textTheme.headline5.copyWith(),
                  ),
                  Text(
                    widget.subtitle,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 56,
                  ),
                ],
              ),
            ),
            AnimatedSize(
              vsync: this,
              duration: Duration(milliseconds: 320),
              child: Container(
                child: isOpen
                    ? FadeTransition(
                        opacity: _animation,
                        child: Column(
                          children: [
                            SettingsCard(
                              isFlat: false,
                              end: false,
                              title: Text(
                                S.of(context).durationSettingLabel,
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                              leading: Icon(Ionicons.ios_hourglass),
                              trailing: Consumer(
                                builder: (BuildContext context,
                                    T Function<T>(ProviderBase<Object, T>)
                                        watch,
                                    Widget child) {
                                  final _appState =
                                      watch(appStateProvider.state);
                                  return DropdownButton<Duration>(
                                    underline: Container(),
                                    items: kPresetTimers.map((preset) {
                                      return DropdownMenuItem<Duration>(
                                        value: preset,
                                        child: Text(
                                          S
                                              .of(context)
                                              .presetDuration(preset.inMinutes),
                                          textAlign: TextAlign.right,
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1
                                              .copyWith(
                                                fontWeight: FontWeight.w300,
                                              ),
                                        ),
                                      );
                                    }).toList(),
                                    value: _appState.duration,
                                    onChanged: (value) {
                                      context
                                          .read(appStateProvider)
                                          .setDuration(value);
                                    },
                                  );
                                },
                              ),
                            ),
                            SettingsCard(
                              title: Text(
                                S.of(context).playSoundSettingLabel,
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                              leading: Icon(Ionicons.ios_musical_note),
                              trailing: Consumer(
                                builder: (BuildContext context,
                                    ScopedReader watch, Widget child) {
                                  final _appState =
                                      watch(appStateProvider.state);
                                  return cupertino.CupertinoSwitch(
                                    activeColor: accent,
                                    onChanged: (value) {
                                      context
                                          .read(appStateProvider)
                                          .togglePlaySounds();
                                    },
                                    value: _appState.playSounds,
                                  );
                                },
                              ),
                            ),
                            SettingsCard(
                              isFlat: false,
                              end: true,
                              title: Text(
                                S.of(context).zenModeSettingLabel,
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                              leading: Icon(Ionicons.ios_heart),
                              // ignore: missing_required_param
                              trailing: Consumer(
                                builder: (BuildContext context,
                                    ScopedReader watch, Widget child) {
                                  final _appState =
                                      watch(appStateProvider.state);
                                  return cupertino.CupertinoSwitch(
                                    activeColor: accent,
                                    onChanged: (_) {
                                      context
                                          .read(appStateProvider)
                                          .toggleZenMode();
                                    },
                                    value: _appState.isZenMode,
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 72,
                            ),
                            FlatButton(
                              minWidth: double.maxFinite,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(68.0),
                              ),
                              color: Theme.of(context).accentColor,
                              onPressed: () {
                                Navigator.of(context).push(PageRoutes.fade(
                                    () => MeditationScreen(),
                                    milliseconds: 300));
                              },
                              child: Text(
                                S.of(context).beginButton.toUpperCase(),
                                style: GoogleFonts.varelaRound(
                                  color: fgDark,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.0,
                                ),
                              ).padding(all: 18.0),
                            ),
                          ],
                        ),
                      )
                    : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BreatheModeCard extends StatefulWidget {
  const BreatheModeCard({Key key, this.subtitle}) : super(key: key);

  final String subtitle;

  @override
  _BreatheModeCardState createState() => _BreatheModeCardState();
}

class _BreatheModeCardState extends State<BreatheModeCard> {
  bool isOpened = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isOpened = !isOpened;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 150),
        margin: EdgeInsets.symmetric(horizontal: isOpened ? 0 : 24.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.0),
          image: DecorationImage(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1564500617448-e541b1df7cee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80'),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.hardLight),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                'Free',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(color: Colors.white),
                textAlign: TextAlign.right,
              ),
            ),
            Text(
              widget.subtitle,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  .copyWith(color: Colors.white70),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
