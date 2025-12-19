import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:sewa_barang_client/core/form/string_form.dart';
import 'package:sewa_barang_client/core/widgets/text_input_field.dart';
import 'package:sewa_barang_client/features/auth/data/models/auth_model.dart';
import 'package:sewa_barang_client/features/auth/presentation/blocs/submit_login/submit_login_bloc.dart';
import 'package:sewa_barang_client/features/auth/presentation/blocs/form_login/form_login_bloc.dart';

class LoginScreen extends StatelessWidget {
  final FormLoginBloc formLoginBloc;
  final SubmitLoginBloc submitLoginBloc;
  final Future<void> Function(
    BuildContext context,
    AuthModel authModel,
  ) onSuccess;
  const LoginScreen({
    super.key,
    required this.formLoginBloc,
    required this.submitLoginBloc,
    required this.onSuccess,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => formLoginBloc,
        ),
        BlocProvider(
          create: (context) => submitLoginBloc,
        ),
      ],
      child: LoginContent(
        onSuccess: onSuccess,
      ),
    );
  }
}

class LoginContent extends StatefulWidget {
  final Future<void> Function(
    BuildContext context,
    AuthModel authModel,
  ) onSuccess;
  const LoginContent({super.key, required this.onSuccess});

  @override
  State<LoginContent> createState() => _LoginContentState();
}

class _LoginContentState extends State<LoginContent> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SubmitLoginBloc, SubmitLoginState>(
        listener: (context, state) {
          if (state.status == SubmitLoginStatus.loading) {
            context.loaderOverlay.show();
          }
          if (state.status == SubmitLoginStatus.loaded) {
            context.loaderOverlay.hide();
            if (state.error != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.red,
                  content: Text(state.error.toString()),
                ),
              );
            }
          }
          if (state.status == SubmitLoginStatus.loaded && state.data != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                backgroundColor: Colors.green,
                content: Text('Login Berhasil'),
              ),
            );
            widget.onSuccess(context, state.data!);
          }
        },
        child: BlocBuilder<FormLoginBloc, FormLoginState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                spacing: 8,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Silahkan Login',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  TextInputField(
                    label: 'Email',
                    errorText: state.email.error?.getMessage(
                      state.email.invalid && !state.email.pure,
                      label: 'Email',
                    ),
                    onChanged: (value) => context.read<FormLoginBloc>().add(
                          FormLoginEvent.changeEmail(email: value),
                        ),
                  ),
                  TextInputField(
                    label: 'Password',
                    errorText: state.password.error?.getMessage(
                      state.password.invalid && !state.password.pure,
                      label: 'Password',
                    ),
                    onChanged: (value) => context.read<FormLoginBloc>().add(
                          FormLoginEvent.changePassword(password: value),
                        ),
                  ),
                  ElevatedButton(
                      onPressed: state.formzStatus.isValid
                          ? () {
                              context.read<SubmitLoginBloc>().add(
                                    SubmitLoginEvent.submit(
                                      state.email.value!,
                                      state.password.value!,
                                    ),
                                  );
                            }
                          : null,
                      child: const Text('Login')),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
