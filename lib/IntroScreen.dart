import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:login_view/LoginPage.dart';

class IntroScreen extends StatefulWidget {

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = [];

  late Function goToTab;

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title: "Welcome to Kievit",
        styleTitle: TextStyle(
          color: Colors.black,
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'RobotoMono',
        ),
        pathImage: "images/logo_intro_1.png",
      ),
    );
    slides.add(
      new Slide(
        title: "Welcome to Kievit",
        styleTitle:
        TextStyle(color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold, fontFamily: 'RobotoMono'),
        pathImage: "images/logo_intro_2.png",
      ),
    );
    slides.add(
      new Slide(
        title: "Welcome to Kievit",
        styleTitle:
        TextStyle(color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold, fontFamily: 'RobotoMono'),
        pathImage: "images/logo_intro_3.png",
      ),
    );
  }

  void onDonePress() => Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (_) => LoginPage(),
    ),
  );

  void onTabChangeCompleted(index) {
    // Index of current tab is focused
    print(index);
  }

  Widget renderNextBtn() {
    return Icon(
      Icons.navigate_next,
      color: Colors.red,
      size: 35.0,
    );
  }

  Widget renderDoneBtn() {
    return Icon(
      Icons.done,
      color: Colors.red,
    );
  }

  Widget renderSkipBtn() {
    return Icon(
      Icons.skip_next,
      color: Colors.redAccent,
    );
  }

  ButtonStyle myButtonStyle() {
    return ButtonStyle(
      shape: MaterialStateProperty.all<OutlinedBorder>(StadiumBorder()),
      backgroundColor: MaterialStateProperty.all<Color>(Color(0x33ff0000)),
      overlayColor: MaterialStateProperty.all<Color>(Color(0x33ff0000)),
    );
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = [];
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(Container(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          margin: EdgeInsets.only(bottom: 60.0, top: 60.0),
          child: ListView(
            children: <Widget>[
              GestureDetector(
                  child: Image.asset(
                    currentSlide.pathImage!,
                    width: 200.0,
                    height: 200.0,
                    fit: BoxFit.contain,
                  )),
              SizedBox(height: 20,),
              Container(
                child: Text(
                  currentSlide.title!,
                  style: currentSlide.styleTitle,
                  textAlign: TextAlign.center,
                ),
                margin: EdgeInsets.only(top: 20.0),
              ),
            ],
          ),
        ),
      ));
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      // Skip button
      renderSkipBtn: this.renderSkipBtn(),
      skipButtonStyle: myButtonStyle(),

      // Next button
      renderNextBtn: this.renderNextBtn(),
      nextButtonStyle: myButtonStyle(),

      // Done button
      renderDoneBtn: this.renderDoneBtn(),
      onDonePress: this.onDonePress,
      doneButtonStyle: myButtonStyle(),

      // Dot indicator
      colorDot: Color(0xffff0000),
      sizeDot: 13.0,

      // Tabs
      listCustomTabs: this.renderListCustomTabs(),
      backgroundColorAllSlides: Colors.white,
      refFuncGoToTab: (refFunc) {
        this.goToTab = refFunc;
      },

      // Behavior
      scrollPhysics: BouncingScrollPhysics(),

      // Show or hide status bar
      hideStatusBar: true,

      // On tab change completed
      onTabChangeCompleted: this.onTabChangeCompleted,
    );
  }
}
