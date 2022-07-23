import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snacks_ordering/bloc/theme/theme_bloc.dart';
import 'package:snacks_ordering/bloc/theme/theme_state.dart';
import 'package:snacks_ordering/pages/login/login_page.dart';
import 'package:snacks_ordering/theme/theme.dart';
import 'package:snacks_ordering/theme/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeBloc()),
      ],
      child: Builder(builder: (context) {
        return BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, themeState) {
          return MaterialApp(
            title: 'SNACKS ORDERING',
            debugShowCheckedModeBanner: false,
            theme: getThemeData(
              context,
              themeState is DarkThemeState ? darkTheme : lightTheme,
            ),
            home: const LoginPage(),
          );
        });
      }),
    );
  }
}
