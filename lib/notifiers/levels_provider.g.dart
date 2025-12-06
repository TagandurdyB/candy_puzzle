// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'levels_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LevelData)
const levelDataProvider = LevelDataProvider._();

final class LevelDataProvider
    extends $AsyncNotifierProvider<LevelData, List<LevelModel>> {
  const LevelDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'levelDataProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$levelDataHash();

  @$internal
  @override
  LevelData create() => LevelData();
}

String _$levelDataHash() => r'4f667a95fe8071d43814aa46b9341d4e746aca0c';

abstract class _$LevelData extends $AsyncNotifier<List<LevelModel>> {
  FutureOr<List<LevelModel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<List<LevelModel>>, List<LevelModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<LevelModel>>, List<LevelModel>>,
              AsyncValue<List<LevelModel>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
