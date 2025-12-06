// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_svg/svg.dart';

import 'package:candy_puzzle/gen/assets.gen.dart';
import 'package:candy_puzzle/services/exports.dart';

class JellyBtn extends StatelessWidget {
  final String text;
  final Function()? onTap;
  final double? textSize;
  const JellyBtn({
    super.key,
    required this.text,
    this.onTap,
     this.textSize=35,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 164,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(Assets.svgs.btnBg),
            context.t.mediumText(text, size: textSize, strokeWidth: 1),
          ],
        ),
      ),
    );
  }
}
