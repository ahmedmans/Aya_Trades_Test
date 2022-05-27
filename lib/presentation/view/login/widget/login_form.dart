import '../../../resources/value_manager.dart';
import 'live_form.dart';
import 'papre_trading_form.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
    required TabController? tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController? _tabController;

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 420,
      child: TabBarView(
        controller: widget._tabController,
        children: const [
          // first tab bar view widget
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppPadding.padding16),
            child: LiveForm(),
          ),

          // second tab bar view widget
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppPadding.padding16),
            child: PaperTradingForm(),
          ),
        ],
      ),
    );
  }
}
