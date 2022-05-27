import '../../resources/assets_manager.dart';
import '../../resources/color_manager.dart';
import '../../resources/value_manager.dart';
import 'widget/tab_bar_contant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogInView extends StatefulWidget {
  const LogInView({Key? key}) : super(key: key);

  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final GlobalKey _key = GlobalKey();
  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: ColorManager.white,
      body: Stack(
        fit: StackFit.expand,
        // alignment: AlignmentDirectional.center,
        children: [
          Positioned(
            top: AppSize.size30 * 2,
            width: AppSize.size26 * 17,
            height: AppSize.size30 * 20,
            child: SvgPicture.asset(
              IconsManager.background,
              fit: BoxFit.cover,
              color: ColorManager.lightGrey,
            ),
          ),
          Positioned(
            top: AppSize.size20 * 4,
            left: AppSize.size28 * 4.5,
            child: SvgPicture.asset(
              IconsManager.logo,
              width: AppSize.size30 * 3,
            ),
          ),
          TabBarContant(tabController: _tabController)
        ],
      ),
    );
  }
}
