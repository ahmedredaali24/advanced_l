import 'package:advanced_app/config/routeing/app_router.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'core/my_bloc_observer.dart';
import 'doc_app.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
