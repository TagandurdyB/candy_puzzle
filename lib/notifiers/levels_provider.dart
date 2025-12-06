import 'package:candy_puzzle/models/level_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'levels_provider.g.dart';

@Riverpod(keepAlive: true)
class LevelData extends _$LevelData {
  @override
  Future<List<LevelModel>> build() async {
    state = AsyncLoading();
    return await _fetchDetails();
  }

  Future<List<LevelModel>> _fetchDetails() async {
    // final repository = ref.read(storeRepositoryProvider);
    // return repository.fetchStoreDetail();
    return [
      LevelModel(id: 1, level: 1, x: 45, y: 90),
      LevelModel(id: 2, level: 2, x: 36, y: 76),
      LevelModel(id: 3, level: 3, x: 54, y: 62),
      LevelModel(id: 4, level: 4, x: 38, y: 48),
      LevelModel(id: 5, level: 5, x: 13, y: 35),
      LevelModel(id: 6, level: 6, x: 38, y: 18),
    ];
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _fetchDetails());
  }
}
