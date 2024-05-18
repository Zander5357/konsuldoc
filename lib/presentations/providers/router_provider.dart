import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:konsuldoc/domain/enums/role.dart';
import 'package:konsuldoc/presentations/providers/auth_state_provider.dart';
import 'package:konsuldoc/core/router/admin_router.dart';
import 'package:konsuldoc/core/router/member_router.dart';
import 'package:konsuldoc/core/router/auth_router.dart';
import 'package:konsuldoc/core/router/doctor_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_provider.g.dart';

@riverpod
RouterConfig<Object> router(RouterRef ref) {
  final user = ref.watch(authStateProvider);
  final role = user == null
      ? null
      : Role.values.byName(
          user.appMetadata['role'] ?? 'member',
        );
  final router = switch (role) {
    Role.admin => AdminRouter(),
    Role.doctor => DoctorRouter(),
    Role.member => MemberRouter(),
    _ => AuthRouter(),
  };

  return router.config(
    navigatorObservers: () => [BotToastNavigatorObserver()],
  );
}
