// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter_svg/svg.dart';

import 'package:candy_puzzle/gen/assets.gen.dart';
import 'package:candy_puzzle/services/exports.dart';

class RibbonHeader extends StatelessWidget {
  final String text;
  final double textSize;
  const RibbonHeader({
    super.key,
    required this.text,
     this.textSize=40,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        SvgPicture.asset(Assets.svgs.ribbonHeader),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: context.t.semiboldText(text, size: textSize, strokeWidth: 1),
        ),
      ],
    );
  }
}
