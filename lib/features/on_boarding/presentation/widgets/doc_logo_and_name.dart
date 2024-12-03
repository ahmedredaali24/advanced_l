import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/assets_images/assets_images.dart';
import '../../../../core/utils/styles/text_styles.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AssetsImages.frameLogo),
        SizedBox(width: 10.w),
        Text("DocDoc", style: TextStyles.font24Black700Weight)
      ],
    );
  }
}
