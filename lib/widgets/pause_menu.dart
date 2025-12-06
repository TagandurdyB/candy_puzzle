import 'package:candy_puzzle/gen/assets.gen.dart';
import 'package:candy_puzzle/services/exports.dart';
import 'package:candy_puzzle/widgets/jelly_switch.dart';
import 'package:candy_puzzle/widgets/ribbon_header.dart';
import 'package:flutter_svg/svg.dart';

class PauseMenu extends StatefulWidget {
  const PauseMenu({super.key});

  @override
  State<PauseMenu> createState() => _PauseMenuState();
}

class _PauseMenuState extends State<PauseMenu> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {},
        child: AspectRatio(
          aspectRatio: 390 / 618,
          child: Stack(
            alignment: Alignment.center,
            children: [
              SvgPicture.asset(Assets.svgs.boardLong),

              Padding(
                padding: const EdgeInsets.only(bottom: 320),
                child: RibbonHeader(text: "Game pause", textSize: 32),
              ),

              Padding(
                padding: const EdgeInsets.all(60),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    JellyBtn(
                      text: 'Menu',
                      textSize: 30,
                      onTap: () {
                        Go.popUntil((route) => route.isFirst);
                      },
                    ),
                    SizedBox(height: 16),
                    JellyBtn(
                      text: 'Continue',
                      textSize: 30,
                      onTap: () {
                        Go.pop();
                      },
                    ),
                    SizedBox(height: 16),
                    JellyBtn(
                      text: 'Restart',
                      textSize: 30,
                      onTap: () {
                        Go.pop(args: [true]);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
