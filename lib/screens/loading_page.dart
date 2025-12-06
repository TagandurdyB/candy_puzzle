import 'package:candy_puzzle/gen/assets.gen.dart';
import 'package:candy_puzzle/services/exports.dart';
import 'package:candy_puzzle/widgets/enter_name_form.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    load();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
    super.initState();
  }

  int prosses = 1;
  bool setName = false;

  void load() async {
    await _IncPercent(10);
    await _IncPercent(60);
    await _IncPercent(80);
    await _IncPercent(100);
    if (Boxes().userName == null) {
      setState(() {
        setName = true;
      });
    } else {
      Go.toReplace(Go.mainMenu);
    }
  }

  Future _IncPercent(int value) async {
    return Future.delayed(Duration(seconds: 1), () {
      prosses = value;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(Assets.images.bg1.keyName, fit: BoxFit.fitWidth),
          if (!setName) buildLoader(),
          Offstage(
            offstage: !setName,
            child: SingleChildScrollView(child: EnterNameForm()),
          ),
        ],
      ),
    );
  }

  Widget buildLoader() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          context.t.mediumText(
            "${"$prosses".padRight(2, '0')}%",
            size: 35,
            col: context.colors.white,
          ),
          SizedBox(width: 8),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: context.colors.bg1.withOpacity(0.5),
            ),
            clipBehavior: Clip.hardEdge,
            margin: EdgeInsets.symmetric(horizontal: 60),
            padding: EdgeInsets.all(3),
            child: LinearProgressIndicator(
              minHeight: 17,
              borderRadius: BorderRadius.circular(20),
              value: prosses * 0.01,
              backgroundColor: Colors.transparent,

              color: context.colors.pink,
            ),
          ),
          SizedBox(height: 90),
        ],
      ),
    );
  }
}
