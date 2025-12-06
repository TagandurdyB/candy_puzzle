import 'package:candy_puzzle/gen/assets.gen.dart';
import 'package:candy_puzzle/services/exports.dart';
import 'package:candy_puzzle/widgets/input_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EnterNameForm extends StatefulWidget {
  const EnterNameForm({super.key});

  @override
  State<EnterNameForm> createState() => _EnterNameFormState();
}

class _EnterNameFormState extends State<EnterNameForm> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: context.colors.shadow,
                offset: Offset(0, 50),
                blurRadius: 50,
                spreadRadius: 0,
              ),
            ],
          ),
          margin: const EdgeInsets.all(20),
          child: Image.asset(Assets.puzzles.tips.a6.keyName),
        ),
        // Expanded(child: SizedBox()),
        Stack(
          alignment: Alignment.topCenter,
          children: [
            SizedBox(
              width: 300,
              height: 200,
              child: SvgPicture.asset(Assets.svgs.board, fit: BoxFit.fill),
            ),
            SizedBox(
              width: 300,
              height: 200,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(18, 25, 18, 0),
                    child: context.t.mediumText(
                      'Enter your name',
                      size: 30,
                      maxLines: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: InputWidget(
                      controller: controller,
                      scrollPadding: EdgeInsets.only(bottom: 160),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        JellyBtn(
          text: 'Next',
          onTap: () {
            if (controller.text.isNotEmpty) {
              Boxes().putUserName(controller.text);
              Go.toReplace(Go.mainMenu);
            }
          },
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
