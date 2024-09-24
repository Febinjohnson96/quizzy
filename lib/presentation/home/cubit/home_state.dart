part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({List<SubjectModel>? subjects}) = _HomeState;
  factory HomeState.initial() {
    return const HomeState(
      subjects: [],
    );
  }
}
