import '../../../resources/color_manager.dart';
import '../../../resources/font_manager.dart';
import '../../../resources/stringes_manager.dart';
import '../../../resources/style_manager.dart';
import '../../../resources/value_manager.dart';
import 'package:flutter/material.dart';

class PaperTradingForm extends StatefulWidget {
  const PaperTradingForm({
    Key? key,
  }) : super(key: key);

  @override
  State<PaperTradingForm> createState() => _PaperTradingFormState();
}

class _PaperTradingFormState extends State<PaperTradingForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: AppSize.size26,
        ),
        Text(
          StringManager.practise,
          style: getRegularStyle(
              fSize: FontSize.fSize16,
              fontFamily: ConstantFonts.latoFont,
              color: ColorManager.kPrimaryColor),
        ),
        const SizedBox(
          height: AppSize.size20,
        ),
        Text(
          StringManager.login,
          style: getBoldStyle(
              fSize: FontSize.fSize18,
              // fontFamily: ConstantFonts.latoFont,
              color: ColorManager.kPrimaryColor),
        ),
        const SizedBox(
          height: AppSize.size10,
        ),
        Row(
          children: [
            Text(
              StringManager.haveAccount,
              style: getRegularStyle(
                fSize: FontSize.fSize12,
                color: ColorManager.black,
                fontFamily: ConstantFonts.montserratFont,
              ),
            ),
            Text(
              StringManager.signup,
              style: getRegularStyle(
                fSize: FontSize.fSize12,
                color: ColorManager.kPrimaryColor,
                fontFamily: ConstantFonts.montserratFont,
              ),
            )
          ],
        ),
        const SizedBox(
          height: AppSize.size26,
        ),
        Container(
          decoration: BoxDecoration(
              color: ColorManager.lightGrey,
              borderRadius: BorderRadius.circular(AppSize.size10),
              boxShadow: [
                BoxShadow(
                    color: ColorManager.grey.withOpacity(0.5),
                    blurRadius: 10.0,
                    //spreadRadius: 5.0,
                    offset: const Offset(-5, 5)),
              ]),
          child: TextFormField(
            decoration: const InputDecoration(hintText: StringManager.email),
          ),
        ),
        const SizedBox(
          height: AppSize.size18,
        ),
        Container(
          decoration: BoxDecoration(
              color: ColorManager.lightGrey,
              borderRadius: BorderRadius.circular(AppSize.size10),
              boxShadow: [
                BoxShadow(
                    color: ColorManager.grey.withOpacity(0.5),
                    blurRadius: 10.0,
                    //spreadRadius: 5.0,
                    offset: const Offset(-5, 5)),
              ]),
          child: TextFormField(
            decoration: const InputDecoration(
                hintText: StringManager.pass,
                suffixIcon: Icon(Icons.visibility_off_outlined)),
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
          ),
        ),
        const SizedBox(
          height: AppSize.size10,
        ),
        Text(
          StringManager.forgotPass2,
          style: getRegularStyle(
            fSize: FontSize.fSize12,
            color: ColorManager.kPrimaryColor,
            fontFamily: ConstantFonts.montserratFont,
          ),
        ),
        const SizedBox(
          height: AppSize.size20,
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppPadding.padding24,
                vertical: AppPadding.padding10,
              ),
              child: Text(StringManager.login),
            ),
          ),
        )
      ],
    );
  }
}
