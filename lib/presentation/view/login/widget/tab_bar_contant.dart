import '../../../resources/value_manager.dart';
import 'animated_tab_button.dart';
import 'login_form.dart';
import 'package:flutter/material.dart';

class TabBarContant extends StatefulWidget {
  const TabBarContant({
    Key? key,
    required TabController? tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController? _tabController;

  @override
  State<TabBarContant> createState() => _TabBarContantState();
}

class _TabBarContantState extends State<TabBarContant> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        //horizontal: AppPadding.padding10,
        vertical: AppPadding.padding20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AnimatedTabButton(tabController: widget._tabController),
          LoginForm(tabController: widget._tabController),
        ],
      ),
    );
  }
}
