import 'package:advanced_app/config/routeing/app_router.dart';
import 'package:advanced_app/core/helper/shared_pref_helper.dart';
import 'package:advanced_app/core/utils/constants/shared_pref_keys.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:path/path.dart';

import 'core/di/dependency_injection.dart';
import 'core/my_bloc_observer.dart';
import 'doc_app.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  Bloc.observer = MyBlocObserver();

  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //     systemNavigationBarColor: Colors.amber, statusBarColor: Colors.green));

  /// to fix text being hidden font bug in flutter_screenUtil in release mode
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggerInUser();

  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
checkIfLoggerInUser()async{
  String?userToken=await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if(userToken !=null && userToken.isNotEmpty){
    isLoggedInUser=true;
  }else{
    isLoggedInUser=false;
  }
}
