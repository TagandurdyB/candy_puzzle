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
    extends $NotifierProvider<PuzzleDuration, Duration> {
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
  Override overrideWithValue(Duration value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Duration>(value),
    );
  }
}

String _$puzzleDurationHash() => r'2623fbfdf75db2ba3557b7da466755ee3a90545c';

abstract class _$PuzzleDuration extends $Notifier<Duration> {
  Duration build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Duration, Duration>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Duration, Duration>,
              Duration,
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

String _$puzzleDataValuesHash() => r'b240fe5f94dbc0ffedb960ad651f78e94d522366';

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

String _$puzzleControllerHash() => r'461b0ce8c53dc3bb7872e2eac1524c91bb664a20';

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
