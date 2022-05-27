import 'dart:async';

import '../../resources/assets_manager.dart';
import '../../resources/color_manager.dart';
import '../../resources/font_manager.dart';
import '../../resources/stringes_manager.dart';
import '../../resources/style_manager.dart';
import '../login/login_view.dart';
import 'widget/fede_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late final Animation<double> _animation;
  late final AnimationController _animationController;
  double _opacity = 0;
  bool _value = true;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    )..addStatusListener(
        (status) {
          if (status == AnimationStatus.completed) {
            Navigator.of(context).pushReplacement(
              ThisIsFadeRoute(
                route: const LogInView(),
              ),
            );
          }
        },
      );

    _animation =
        Tween<double>(begin: 0.0, end: 1).animate(_animationController);
    Future.delayed(const Duration(milliseconds: 1800), () {
      setState(() {
        _opacity = 1.0;
        _value = false;
      });
    });
    Future.delayed(const Duration(milliseconds: 2000), () {
      setState(() {
        _animationController.forward();
      });
    });
  }

  @override
  void dispose() {
    super.dispose();

    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          curve: Curves.fastLinearToSlowEaseIn,
          duration: const Duration(seconds: 6),
          opacity: _opacity,
          child: AnimatedContainer(
            curve: Curves.fastLinearToSlowEaseIn,
            duration: const Duration(seconds: 2),
            height: _value ? 50 : 200,
            width: _value ? 50 : 200,
            child: AnimatedBuilder(
              animation: _animation,
              builder: (context, child) => Transform.scale(
                scale: _animation.value,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(child: SvgPicture.asset(IconsManager.logo)),
                    Expanded(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: StringManager.splashHeadline,
                              style: getBoldStyle(
                                color: ColorManager.kPrimaryColor,
                                fSize: FontSize.fSize30,
                              ),
                            ),
                            TextSpan(
                              text: StringManager.splashHeadline2,
                              style: getBoldStyle(
                                color: ColorManager.black,
                                fSize: FontSize.fSize30,
                              ),
                            ),
                            TextSpan(
                              text: StringManager.splashBody,
                              style: getBoldStyle(
                                color: ColorManager.kPrimaryColor,
                                fSize: FontSize.fSize18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
