import 'package:bot_toast/bot_toast.dart';
import 'package:konsuldoc/core/dependencies/repositories.dart';
import 'package:konsuldoc/core/utils/handle_error.dart';
import 'package:konsuldoc/core/utils/show_loading.dart';
import 'package:konsuldoc/domain/repositories/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_controller.g.dart';

@riverpod
AuthController authController(AuthControllerRef ref) {
  return AuthController(repository: ref.watch(authRepositoryProvider));
}

class AuthController {
  final AuthRepository _repository;

  AuthController({required AuthRepository repository})
      : _repository = repository;

  void signIn({
    required String email,
    required String password,
  }) async {
    final cancel = showLoading();
    final res = await handleError(_repository.signIn(
      email: email,
      password: password,
    ));
    cancel();

    res.mapLeft((error) => BotToast.showText(text: error.message));
  }

  void signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    final cancel = showLoading();
    final res = await handleError(_repository.signUp(
      name: name,
      email: email,
      password: password,
    ));
    cancel();

    res.mapLeft((error) => BotToast.showText(text: error.message));
  }

  void signOut() async {
    final cancel = showLoading();
    final res = await handleError(_repository.signOut());
    cancel();

    res.mapLeft((error) => BotToast.showText(text: error.message));
  }

  Future<bool> deleteUser(String id) async {
    final cancel = showLoading();
    final res = await handleError(_repository.deleteUser(id));
    cancel();

    return res.fold(
      (l) {
        BotToast.showText(text: l.message);
        return false;
      },
      (r) {
        BotToast.showText(text: 'Berhasil dihapus');
        return true;
      },
    );
  }
}
