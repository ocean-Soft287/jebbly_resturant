import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';  
import 'package:jeebly/core/constant/bloc_observer.dart' show MyBlocObserver;

import 'feature/main/splash/splashscreen .dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(DevicePreview(enabled: true, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          title: 'jeebly',
          home: const SplachView(),
          builder: DevicePreview.appBuilder,
        );
      },
    );
  }
}
