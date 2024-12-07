import 'package:advanced_app/config/routeing/app_router.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:path/path.dart';

import 'core/di/dependency_injection.dart';
import 'core/my_bloc_observer.dart';
import 'doc_app.dart';

void main() async {
  setupGetIt();
  Bloc.observer = MyBlocObserver();

  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //     systemNavigationBarColor: Colors.amber, statusBarColor: Colors.green));
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
