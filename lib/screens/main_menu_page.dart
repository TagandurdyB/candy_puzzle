import 'package:candy_puzzle/gen/assets.gen.dart';
import 'package:candy_puzzle/services/exports.dart';
import 'package:candy_puzzle/widgets/ribbon_header.dart';
import 'package:candy_puzzle/widgets/rules_menu.dart';
import 'package:candy_puzzle/widgets/settings_menu.dart';
import 'package:flutter_svg/svg.dart';

class MainManuPage extends StatefulWidget {
  const MainManuPage({super.key});

  @override
  State<MainManuPage> createState() => _MainManuPageState();
}

class _MainManuPageState extends State<MainManuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(Assets.images.bg3.keyName, fit: BoxFit.fitWidth),

          Positioned(
            top: 20,
            left: 20,
            child: GestureDetector(
              onTap: () {
                PopUpService().show(RulesMenu());
              },
              child: SvgPicture.asset(Assets.svgs.info),
            ),
          ),

          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(Assets.svgs.menuBoard),
                Padding(
                  padding: const EdgeInsets.only(bottom: 300),
                  child: RibbonHeader(text: "MENU"),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 35),
                    JellyBtn(
                      text: 'Play',
                      onTap: () {
                        Go.to(Go.level);
                      },
                    ),
                    SizedBox(height: 30),
                    JellyBtn(
                      text: 'Settings',
                      onTap: () {
                        PopUpService().show(SettingsMenu());
                      },
                    ),
                    SizedBox(height: 30),
                    JellyBtn(
                      text: 'Privacy',
                      onTap: () {
                        PopUpService().show(RulesMenu());
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
