import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:play_to_app/src/logic/controller_cubit.dart';
import 'package:play_to_app/src/screens/category_screen.dart';

import 'src/screens/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.top]);
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarIconBrightness: Brightness.dark));
  runApp(MaterialApp(
    home: BlocProvider<ControllerCubit>(
      create: (BuildContext context) => ControllerCubit(),
      // child: const Home(),
      child: const CategoryScreen(),
    ),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        )),
  ));
}
