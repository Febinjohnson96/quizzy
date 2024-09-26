import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quizzy/domain/models/subject/subject_model.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState.initial());

  void onLoadHome() async {
    emit(state.copyWith(subjects: subjects));
  }

  void onClickedSubject(String subject) {
    emit(state.copyWith(selectedsubject: subject));
  }
}
