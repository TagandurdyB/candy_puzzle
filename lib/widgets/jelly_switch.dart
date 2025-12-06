// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter_svg/flutter_svg.dart';

import 'package:candy_puzzle/gen/assets.gen.dart';
import 'package:candy_puzzle/services/exports.dart';

class JellySwitch extends StatefulWidget {
  final bool isOn;
  final Function()? onChange;
  const JellySwitch({super.key, required this.isOn, this.onChange});

  @override
  State<JellySwitch> createState() => _JellySwitchState();
}

class _JellySwitchState extends State<JellySwitch> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onChange,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
            child: widget.isOn
                ? SvgPicture.asset(Assets.svgs.switchOnBg)
                : SvgPicture.asset(Assets.svgs.switchOfBg),
          ),
          AnimatedPositioned(
            left: widget.isOn ? 30 : 0,
            duration: Duration(milliseconds: 200),
            child: SvgPicture.asset(Assets.svgs.switchHead),
          ),
        ],
      ),
    );
  }
}
