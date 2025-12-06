import 'package:candy_puzzle/gen/assets.gen.dart';
import 'package:candy_puzzle/services/exports.dart';
import 'package:flutter_svg/svg.dart';

class RulesMenu extends StatefulWidget {
  const RulesMenu({super.key});

  @override
  State<RulesMenu> createState() => _RulesMenuState();
}

class _RulesMenuState extends State<RulesMenu> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        SvgPicture.asset(Assets.svgs.rulesBoard),
        // Padding(
        //   padding: const EdgeInsets.only(bottom: 300),
        //   child: RibbonHeader(text: "MENU"),
        // ),
        Positioned(
          top: 100,
          child: context.t.semiboldText('Rules', size: 50, strokeWidth: 2),
        ),
        Positioned(
          top: 230,
          child: context.t.semiboldText('TEXT TEXT', size: 45),
        ),
        Positioned(
          top: 140,
          right: 30,
          child: GestureDetector(
            onTap: () => Go.pop(),
            child: SvgPicture.asset(Assets.svgs.close),
          ),
        ),
      ],
    );
  }
}
