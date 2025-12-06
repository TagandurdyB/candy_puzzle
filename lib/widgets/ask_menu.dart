import 'package:candy_puzzle/gen/assets.gen.dart';
import 'package:candy_puzzle/services/exports.dart';
import 'package:flutter_svg/svg.dart';

class AskMenu extends StatefulWidget {
  const AskMenu({super.key});

  @override
  State<AskMenu> createState() => _AskMenuState();
}

class _AskMenuState extends State<AskMenu> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {},
        child: AspectRatio(
          aspectRatio: 313 / 258,
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: 313,
                height: 258,
                child: SvgPicture.asset(Assets.svgs.board, fit: BoxFit.fill),
              ),
              SizedBox(
                width: 313,
                height: 258,
                child: Center(
                  child: context.t.semiboldText(
                    'Do you really want exit the game?',
                    size: 35,
                    strokeWidth: 2,
                    maxLines: 4,
                    align: TextAlign.center,
                  ),
                ),
              ),

              Positioned(
                bottom: 0,
                child: SizedBox(
                  width: 313,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 111,
                        child: JellyBtn(
                          text: 'YES',
                          textSize: 24,
                          onTap: () {
                            Go.pop();
                            Go.pop();
                          },
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      SizedBox(
                        width: 111,
                        child: JellyBtn(
                          text: 'NO',
                          textSize: 24,
                          onTap: () => Go.pop(args: [false]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
