import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snacks_ordering/bloc/login/login_bloc.dart';
import 'package:snacks_ordering/bloc/login/login_state.dart';
import 'package:snacks_ordering/pages/login/widgets/login_form/change_login_buttons.dart';
import 'package:snacks_ordering/pages/login/widgets/login_form/social_button.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _emailFieldController = TextEditingController();
  final _passwordFieldController = TextEditingController();

  final _passwordFieldFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Column(
        children: [
          const ChangeLoginButtons(),
          const SizedBox(height: 26),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 27.0, 16.0, 40.0),
            child: Column(
              children: [
                Row(
                  children: const [
                    Expanded(
                      child: SocialButton(
                        text: 'GOOGLE',
                        imagePath: 'assets/images/google.png',
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: SocialButton(
                        text: 'FACEBOOK',
                        imagePath: 'assets/images/facebook.png',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                TextField(
                  controller: _emailFieldController,
                  decoration: const InputDecoration(
                    hintText: 'Email address',
                  ),
                  onSubmitted: (_) =>
                      FocusScope.of(context).requestFocus(_passwordFieldFocus),
                ),
                const SizedBox(height: 17),
                TextField(
                  controller: _passwordFieldController,
                  decoration: const InputDecoration(
                    hintText: 'Password',
                  ),
                  focusNode: _passwordFieldFocus,
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                ),
                const SizedBox(height: 17),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).primaryColor.withOpacity(.15),
                        offset: const Offset(0, 30),
                        blurRadius: 30.0,
                      )
                    ],
                  ),
                  child: BlocBuilder<LoginBloc, LoginState>(
                      builder: (context, loginState) {
                    return ElevatedButton(
                      onPressed: () {},
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 300),
                        transitionBuilder: (child, animation) =>
                            ScaleTransition(
                          scale: animation,
                          child: child,
                        ),
                        child: Text(
                          loginState is RegistrationLoginState
                              ? 'Create account'
                              : 'Log in',
                          key: ValueKey(loginState),
                          style: const TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontSize: 17.0,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
