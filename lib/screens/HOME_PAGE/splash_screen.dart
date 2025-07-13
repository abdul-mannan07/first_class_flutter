import 'package:first_class_flutter/screens/main_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _scale;
  late final Animation<Offset> _imageSlider;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    _scale = CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 0.65),
        reverseCurve: Curves.easeOutBack);
    _imageSlider = Tween<Offset>(begin: Offset(0, 1), end: Offset.zero)
        .animate(_controller);
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MainScreenBody()));
    });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SlideTransition(
              position: _imageSlider,
              child: Image.asset(
                "assets/logo.png",
                width: 300,
              )),
          // AnimatedContainer(
          //     duration: Duration(seconds: 5),
          //     curve: Curves.bounceInOut,
          //     width: 200,
          //     height: 200,
          //     child: Image.asset("assets/logo.png")),
          SizedBox(
            height: 100,
          ),
          FadeTransition(
            opacity: _scale,
            child: Center(child: Text("SoftWiz Solutions & Institue")),
          )
        ],
      ),
    );
  }
}

// import 'dart:async';

// import 'package:first_class_flutter/screens/HOME_PAGE/home_screen.dart';
// import 'package:flutter/material.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen>
//     with TickerProviderStateMixin {
//   late final AnimationController _controller;
//   late final Animation<double> _logoFadeScale;
//   late final Animation<Offset> _imageSlide;
//   late final Animation<double> _textFade;
//   late final Animation<double> _textScale;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _controller = AnimationController(
//         vsync: this, duration: Duration(microseconds: 2500));
//     _logoFadeScale = CurvedAnimation(
//         parent: _controller,
//         curve: Interval(0.0, 0.32, curve: Curves.easeOutBack));
//     _imageSlide = Tween(
//       begin: Offset(0, 1),
//       end: Offset.zero,
//     ).animate(CurvedAnimation(
//       parent: _controller,
//       curve: Interval(0.32, 0.64, curve: Curves.easeOut),
//     ));

//     _textScale = Tween(
//       begin: 0.8,
//       end: 1.0,
//     ).animate(CurvedAnimation(
//       parent: _controller,
//       curve: Interval(0.64, 1.0, curve: Curves.easeOutBack),
//     ));

//     _controller.forward();

//     Timer(Duration(seconds: 3), () {
//       Navigator.pushReplacement(
//           context, MaterialPageRoute(builder: (context) => HomeScreen()));
//     });
//   }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     _controller.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedContainer(duration: duration);
//   }
// }
