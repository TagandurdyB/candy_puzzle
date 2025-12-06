import 'package:candy_puzzle/services/exports.dart';
import 'package:hive_ce/hive.dart';
import 'package:path_provider/path_provider.dart';

class Boxes {
  static final Boxes _instance = Boxes._internal();
  Boxes._internal();
  factory Boxes() => _instance;

  Future init({int? version, String? initPath}) async {
    final hive = Hive;
    hive.init((await getApplicationDocumentsDirectory()).path);
    // ..registerAdapter(_DurationAdapter());
    await hive.openBox('candy_puzzle_base');
    base = hive.box('candy_puzzle_base');
  }

  late Box base;

  String? get userName => base.get('user_name');
  Future<void> putUserName(String? val) => base.put('user_name', val);

  int get openedLvl => base.get('opened_lvl') ?? 1;
  Future<void> putOpenedLvl(int? val) => base.put('opened_lvl', val);

  Duration? bestTime(int levelId) => base.get('best_time_$levelId');
  Future<void> putBestTime(int levelId, Duration? val) =>
      base.put('best_time_$levelId', val);

  bool get music => base.get('music') ?? false;
  Future<void> putMusic(bool val) => base.put('music', val);

  bool get sound => base.get('sound') ?? true;
  Future<void> putSound(bool val) => base.put('sound', val);
}
