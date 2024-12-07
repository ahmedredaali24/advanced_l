import 'package:advanced_app/config/routeing/app_router.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';
import 'core/my_bloc_observer.dart';
import 'doc_app.dart';

Future<void> main() async {
  setupGetIt();
  Bloc.observer = MyBlocObserver();
  // to fix text being hidden font bug in flutter_screenUtil in release mode
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
