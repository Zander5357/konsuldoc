import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:konsuldoc/core/router/auth_router.gr.dart';
import 'package:konsuldoc/core/theme/styles.dart';
import 'package:konsuldoc/presentations/controllers/auth_controller.dart';
import 'package:konsuldoc/presentations/widgets/custom_elevated_button.dart';
import 'package:konsuldoc/presentations/widgets/custom_text_field.dart';

@RoutePage()
class SignInPage extends ConsumerStatefulWidget {
  const SignInPage({super.key});

  @override
  ConsumerState<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends ConsumerState<SignInPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Hi, Selamat Datang!', style: welcomeTextStyle),
                const SizedBox(height: 8),
                const Text('Kami harap Anda baik-baik saja.',
                    style: messageTextStyle),
                const SizedBox(height: 32),
                CustomTextField(
                  controller: emailController,
                  icon: Icons.mail_outline,
                  hintText: 'Email',
                  fillColor: inputFieldFillColor,
                  hintStyle: inputFieldHintStyle,
                  borderSide: inputFieldBorderSide,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  controller: passwordController,
                  obscureText: true,
                  icon: Icons.lock_outline,
                  hintText: 'Password',
                  fillColor: inputFieldFillColor,
                  hintStyle: inputFieldHintStyle,
                  borderSide: inputFieldBorderSide,
                ),
                const SizedBox(height: 32),
                CustomElevatedButton(
                  onPressed: signIn,
                  text: 'Masuk',
                  width: double.infinity,
                  height: 40,
                ),
                const SizedBox(height: 33),
                Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(text: 'Belum punya akun? '),
                      TextSpan(
                        text: 'Daftar',
                        style: linkTextStyle,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.pushRoute(const SignUpRoute());
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void signIn() {
    ref.read(authControllerProvider).signIn(
          email: emailController.text,
          password: passwordController.text,
        );
  }
}
