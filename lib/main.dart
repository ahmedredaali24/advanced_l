import 'package:advanced_app/config/routeing/app_router.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'core/di/dependency_injection.dart';
import 'core/my_bloc_observer.dart';
import 'doc_app.dart';

void main() {
  setupGetIt();
  Bloc.observer = MyBlocObserver();

  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
