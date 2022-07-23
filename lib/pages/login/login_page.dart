import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snacks_ordering/bloc/login/login_bloc.dart';
import 'package:snacks_ordering/bloc/theme/theme_bloc.dart';
import 'package:snacks_ordering/bloc/theme/theme_state.dart';
import 'package:snacks_ordering/pages/login/widgets/images.dart';
import 'package:snacks_ordering/pages/login/widgets/login_form/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: Scaffold(
        body: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
          child: BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, themeState) {
              return Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      themeState is LightThemeState
                          ? "assets/images/light-background.png"
                          : "assets/images/dark-background.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Snacks at your\nseat!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 34,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Images(),
                            SizedBox(height: 30),
                            LoginForm(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
