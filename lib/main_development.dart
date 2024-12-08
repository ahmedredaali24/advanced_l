import 'package:advanced_app/config/routeing/app_router.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';
import 'core/helper/shared_pref_helper.dart';
import 'core/my_bloc_observer.dart';
import 'core/utils/constants/shared_pref_keys.dart';
import 'doc_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  Bloc.observer = MyBlocObserver();
  // to fix text being hidden font bug in flutter_screenUtil in release mode
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggerInUser();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}

checkIfLoggerInUser() async {
  String? userToken =
      await SharedPrefHelper.getString(SharedPrefKeys.userToken);
  if (userToken != null && userToken.isNotEmpty) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
