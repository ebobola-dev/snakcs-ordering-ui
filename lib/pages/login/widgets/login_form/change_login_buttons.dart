import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snacks_ordering/bloc/login/login_bloc.dart';
import 'package:snacks_ordering/bloc/login/login_event.dart';
import 'package:snacks_ordering/bloc/login/login_state.dart';

class ChangeLoginButtons extends StatelessWidget {
  const ChangeLoginButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonWidth = (MediaQuery.of(context).size.width - 16 * 2) / 2;
    final loginBloc = context.read<LoginBloc>();
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, loginState) => Container(
        height: 52,
        width: buttonWidth * 2,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          color: Theme.of(context).primaryColor.withOpacity(.32),
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              left: loginState is RegistrationLoginState ? 0 : buttonWidth,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: 52,
                width: buttonWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: loginState is RegistrationLoginState
                        ? const Radius.circular(30.0)
                        : Radius.zero,
                    topRight: loginState is RegistrationLoginState
                        ? Radius.zero
                        : const Radius.circular(30.0),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Material(
                  color: Colors.transparent,
                  textStyle: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w900,
                    fontSize: 18.0,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  child: InkWell(
                    onTap: loginState is AuthorizationLoginState
                        ? () => loginBloc.add(SetRegistrationLoginEvent())
                        : null,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0),
                    ),
                    child: SizedBox(
                      width: buttonWidth,
                      child: const Center(
                        child: Text('Sign up'),
                      ),
                    ),
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  textStyle: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w900,
                    fontSize: 18.0,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  child: InkWell(
                    onTap: loginState is RegistrationLoginState
                        ? () => loginBloc.add(SetAuhtorizationLoginEvent())
                        : null,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),
                    child: SizedBox(
                      width: buttonWidth,
                      child: const Center(
                        child: Text('Sign in'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
