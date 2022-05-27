import 'package:aya_trades_interview_test/presentation/resources/stringes_manager.dart';

import '../../../resources/color_manager.dart';
import '../../../resources/value_manager.dart';
import 'package:flutter/material.dart';

class AnimatedTabButton extends StatefulWidget {
  const AnimatedTabButton({
    Key? key,
    required TabController? tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController? _tabController;

  @override
  State<AnimatedTabButton> createState() => _AnimatedTabButtonState();
}

class _AnimatedTabButtonState extends State<AnimatedTabButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.padding16),
      child: Container(
        // margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: ColorManager.kLightGreen,
          borderRadius: BorderRadius.circular(
            AppSize.size10,
          ),
        ),
        height: 42,

        child: TabBar(
          padding: const EdgeInsets.all(AppSize.size4),
          controller: widget._tabController,
          // give the indicator a decoration (color and border radius)
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(
              AppSize.size10,
            ),
            color: ColorManager.kPrimaryColor,
          ),
          labelColor: ColorManager.ofWhite,
          unselectedLabelColor: ColorManager.kPrimaryColor,
          tabs: const [
            // first tab [you can add an icon using the icon property]
            Tab(
              text: StringManager.live,
            ),

            // second tab [you can add an icon using the icon property]
            Tab(
              text: StringManager.paperTrading,
            ),
          ],
        ),
      ),
    );
  }
}
