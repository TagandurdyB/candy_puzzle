// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'puzzle_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PuzzleDuration)
const puzzleDurationProvider = PuzzleDurationProvider._();

final class PuzzleDurationProvider
    extends $NotifierProvider<PuzzleDuration, MapEntry<Duration, Duration>> {
  const PuzzleDurationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'puzzleDurationProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$puzzleDurationHash();

  @$internal
  @override
  PuzzleDuration create() => PuzzleDuration();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MapEntry<Duration, Duration> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MapEntry<Duration, Duration>>(value),
    );
  }
}

String _$puzzleDurationHash() => r'62d88adab81d9e9b5a440b21056a7dfbffe6f59f';

abstract class _$PuzzleDuration
    extends $Notifier<MapEntry<Duration, Duration>> {
  MapEntry<Duration, Duration> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<MapEntry<Duration, Duration>, MapEntry<Duration, Duration>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                MapEntry<Duration, Duration>,
                MapEntry<Duration, Duration>
              >,
              MapEntry<Duration, Duration>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(PuzzleDataValues)
const puzzleDataValuesProvider = PuzzleDataValuesProvider._();

final class PuzzleDataValuesProvider
    extends $NotifierProvider<PuzzleDataValues, PuzzleDataState> {
  const PuzzleDataValuesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'puzzleDataValuesProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$puzzleDataValuesHash();

  @$internal
  @override
  PuzzleDataValues create() => PuzzleDataValues();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PuzzleDataState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PuzzleDataState>(value),
    );
  }
}

String _$puzzleDataValuesHash() => r'0230f6f3796603c3b7c1c7743d9e1ce88eccdfc8';

abstract class _$PuzzleDataValues extends $Notifier<PuzzleDataState> {
  PuzzleDataState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<PuzzleDataState, PuzzleDataState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PuzzleDataState, PuzzleDataState>,
              PuzzleDataState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(PuzzleController)
const puzzleControllerProvider = PuzzleControllerProvider._();

final class PuzzleControllerProvider
    extends $AsyncNotifierProvider<PuzzleController, PuzzleModel?> {
  const PuzzleControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'puzzleControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$puzzleControllerHash();

  @$internal
  @override
  PuzzleController create() => PuzzleController();
}

String _$puzzleControllerHash() => r'dda2a85e9f99d8fa4bd91b9e19dbbc59f78606ad';

abstract class _$PuzzleController extends $AsyncNotifier<PuzzleModel?> {
  FutureOr<PuzzleModel?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<PuzzleModel?>, PuzzleModel?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<PuzzleModel?>, PuzzleModel?>,
              AsyncValue<PuzzleModel?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
