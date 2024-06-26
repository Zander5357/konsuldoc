import 'package:bot_toast/bot_toast.dart';
import 'package:konsuldoc/core/dependencies/repositories.dart';
import 'package:konsuldoc/core/utils/handle_error.dart';
import 'package:konsuldoc/core/utils/show_loading.dart';
import 'package:konsuldoc/domain/entities/appointment.dart';
import 'package:konsuldoc/domain/entities/appointment_session.dart';
import 'package:konsuldoc/domain/enums/appointment_status.dart';
import 'package:konsuldoc/domain/repositories/appointment_repository.dart';
import 'package:konsuldoc/presentations/providers/auth_state_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'appointment_controller.g.dart';

@riverpod
AppointmentController appointmentController(AppointmentControllerRef ref) {
  return AppointmentController(
    repository: ref.watch(appointmentRepositoryProvider),
  );
}

@riverpod
Future<List<AppointmentSession>> fetchBookedSessions(
  FetchBookedSessionsRef ref,
  String idDoctor,
) {
  return ref
      .watch(appointmentRepositoryProvider)
      .fetchBookedSession(idDoctor, ref.watch(authStateProvider)?.id ?? '');
}

@riverpod
Stream<Appointment> fetchAppointmentById(
  FetchAppointmentByIdRef ref,
  String id,
) {
  return ref.watch(appointmentRepositoryProvider).fetchById(id);
}

class AppointmentController {
  final AppointmentRepository _repository;

  AppointmentController({
    required AppointmentRepository repository,
  }) : _repository = repository;

  Future<String?> add(
    String idDoctor,
    DateTime date,
    int session,
    String? complaints,
  ) async {
    if (session < 0) {
      BotToast.showText(text: 'Harap memilih sesi terlelbih dahulu');
      return null;
    }
    final cancel = showLoading();
    final res =
        await handleError(_repository.add(idDoctor, date, session, complaints));
    cancel();

    return res.fold(
      (l) {
        BotToast.showText(text: l.message);
        return null;
      },
      (r) {
        BotToast.showText(text: "Berhasil menambahkan janji temu");
        return r;
      },
    );
  }

  Future<bool> editStatus(
    String id, {
    AppointmentStatus? status,
    String? diagnosis,
    String? suggestion,
  }) async {
    final cancel = showLoading();
    final res = await handleError(_repository.editStatus(
      id,
      status: status,
      diagnosis: diagnosis,
      suggestion: suggestion,
    ));
    cancel();

    return res.fold(
      (l) {
        BotToast.showText(text: "Gagal mengedit status");
        return false;
      },
      (r) {
        BotToast.showText(text: "Berhasil mengedit status");
        return true;
      },
    );
  }

  Future<bool> cancel(String id) async {
    final cancel = showLoading();
    final res = await handleError(_repository.cancel(id));
    cancel();

    return res.fold(
      (l) {
        BotToast.showText(text: "Gagal membatalkan janji temu");
        return false;
      },
      (r) {
        BotToast.showText(text: "Janji temu berhasil dibatalkan");
        return true;
      },
    );
  }

  Future<bool> reschedule(
    String id,
    DateTime date,
    int session,
  ) async {
    final cancel = showLoading();
    final res = await handleError(_repository.reschedule(id, date, session));
    cancel();

    return res.fold(
      (l) {
        BotToast.showText(text: "Gagal mengedit jadwal janji temu");
        return false;
      },
      (r) {
        BotToast.showText(text: "Berhasil mengedit jadwal janji temu");
        return true;
      },
    );
  }
}
