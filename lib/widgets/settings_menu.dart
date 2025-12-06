import 'package:candy_puzzle/gen/assets.gen.dart';
import 'package:candy_puzzle/services/exports.dart';
import 'package:candy_puzzle/widgets/jelly_switch.dart';
import 'package:flutter_svg/svg.dart';

class SettingsMenu extends StatefulWidget {
  const SettingsMenu({super.key});

  @override
  State<SettingsMenu> createState() => _SettingsMenuState();
}

class _SettingsMenuState extends State<SettingsMenu> {
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
              SvgPicture.asset(Assets.svgs.settingsBoard, fit: BoxFit.fill),
              Positioned(
                top: 100,
                child: context.t.semiboldText(
                  'Settings',
                  size: 50,
                  strokeWidth: 2,
                ),
              ),
              Positioned(
                top: 155,
                right: 25,
                child: GestureDetector(
                  onTap: () => Go.pop(),
                  child: SvgPicture.asset(Assets.svgs.close),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(60),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    buildSwitch('Music', Boxes().music, () {
                      setState(() {
                        Boxes().putMusic(!Boxes().music);
                      });
                    }),
                    buildSwitch('Sound', Boxes().sound, () {
                      setState(() {
                        Boxes().putSound(!Boxes().sound);
                      });
                    }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSwitch(String text, bool isOn, Function() func) {
    return Row(
      children: [
        Expanded(child: context.t.mediumText(text, size: 50)),
        JellySwitch(isOn: isOn, onChange: func),
      ],
    );
  }
}
