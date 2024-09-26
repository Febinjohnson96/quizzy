import 'package:fluttertoast/fluttertoast.dart';
import 'package:quizzy/core/config/app_colors.dart';

class AppToast {
  AppToast._();

  static void show(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: AppColors.lightPurple,
        textColor: AppColors.white,
        fontSize: 16.0);
  }
}
