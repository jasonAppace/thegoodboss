import 'package:hexacom_user/helper/responsive_helper.dart';
import 'package:hexacom_user/localization/language_constrants.dart';
import 'package:hexacom_user/utill/dimensions.dart';
import 'package:hexacom_user/utill/images.dart';
import 'package:hexacom_user/utill/styles.dart';
import 'package:flutter/material.dart';

class SignUpLogoWidget extends StatelessWidget {
  const SignUpLogoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).cardColor,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        const SizedBox(height: Dimensions.paddingSizeExtraSmall),
        Image.asset(
          Images.logo,
          height: ResponsiveHelper.isDesktop(context) ? 100.0 : 160,
          fit: BoxFit.scaleDown,
          matchTextDirection: true,
        ),
        const SizedBox(height: Dimensions.paddingSizeExtraSmall),
        Text(getTranslated('signup', context),
            style: rubikBold.copyWith(
                fontSize: Dimensions.fontSizeThirty,
                color: Theme.of(context).primaryColor)),
        const SizedBox(height: Dimensions.paddingSizeDefault),
        SizedBox(
          width: 300,
          child: Text(getTranslated('login_description', context),
              textAlign: TextAlign.center,
              style:
                  rubikRegular.copyWith(fontSize: Dimensions.fontSizeDefault)),
        ),
      ]),
    );
  }
}
