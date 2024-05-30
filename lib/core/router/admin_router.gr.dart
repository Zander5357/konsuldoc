// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:konsuldoc/domain/entities/admin.dart' as _i11;
import 'package:konsuldoc/domain/entities/doctor.dart' as _i12;
import 'package:konsuldoc/presentations/pages/admin/admin_form_page.dart'
    as _i1;
import 'package:konsuldoc/presentations/pages/admin/admin_list_page.dart'
    as _i2;
import 'package:konsuldoc/presentations/pages/admin/admin_root_page.dart'
    as _i3;
import 'package:konsuldoc/presentations/pages/admin/doctor_form_page.dart'
    as _i6;
import 'package:konsuldoc/presentations/pages/admin/doctor_list_page.dart'
    as _i7;
import 'package:konsuldoc/presentations/pages/common/appointment_detail_page.dart'
    as _i4;
import 'package:konsuldoc/presentations/pages/common/doctor_detail_page.dart'
    as _i5;
import 'package:konsuldoc/presentations/pages/common/member_detail_page.dart'
    as _i8;

abstract class $AdminRouter extends _i9.RootStackRouter {
  $AdminRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    AdminFormRoute.name: (routeData) {
      final args = routeData.argsAs<AdminFormRouteArgs>(
          orElse: () => const AdminFormRouteArgs());
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AdminFormPage(
          key: args.key,
          admin: args.admin,
        ),
      );
    },
    AdminListRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AdminListPage(),
      );
    },
    AdminRootRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AdminRootPage(),
      );
    },
    AppointmentDetailRoute.name: (routeData) {
      final args = routeData.argsAs<AppointmentDetailRouteArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.AppointmentDetailPage(
          key: args.key,
          id: args.id,
          canConfirm: args.canConfirm,
        ),
      );
    },
    DoctorDetailRoute.name: (routeData) {
      final args = routeData.argsAs<DoctorDetailRouteArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.DoctorDetailPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    DoctorFormRoute.name: (routeData) {
      final args = routeData.argsAs<DoctorFormRouteArgs>(
          orElse: () => const DoctorFormRouteArgs());
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.DoctorFormPage(
          key: args.key,
          doctor: args.doctor,
        ),
      );
    },
    DoctorListRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.DoctorListPage(),
      );
    },
    MemberDetailRoute.name: (routeData) {
      final args = routeData.argsAs<MemberDetailRouteArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.MemberDetailPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AdminFormPage]
class AdminFormRoute extends _i9.PageRouteInfo<AdminFormRouteArgs> {
  AdminFormRoute({
    _i10.Key? key,
    _i11.Admin? admin,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          AdminFormRoute.name,
          args: AdminFormRouteArgs(
            key: key,
            admin: admin,
          ),
          initialChildren: children,
        );

  static const String name = 'AdminFormRoute';

  static const _i9.PageInfo<AdminFormRouteArgs> page =
      _i9.PageInfo<AdminFormRouteArgs>(name);
}

class AdminFormRouteArgs {
  const AdminFormRouteArgs({
    this.key,
    this.admin,
  });

  final _i10.Key? key;

  final _i11.Admin? admin;

  @override
  String toString() {
    return 'AdminFormRouteArgs{key: $key, admin: $admin}';
  }
}

/// generated route for
/// [_i2.AdminListPage]
class AdminListRoute extends _i9.PageRouteInfo<void> {
  const AdminListRoute({List<_i9.PageRouteInfo>? children})
      : super(
          AdminListRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminListRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AdminRootPage]
class AdminRootRoute extends _i9.PageRouteInfo<void> {
  const AdminRootRoute({List<_i9.PageRouteInfo>? children})
      : super(
          AdminRootRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminRootRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.AppointmentDetailPage]
class AppointmentDetailRoute
    extends _i9.PageRouteInfo<AppointmentDetailRouteArgs> {
  AppointmentDetailRoute({
    _i10.Key? key,
    required String id,
    bool canConfirm = false,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          AppointmentDetailRoute.name,
          args: AppointmentDetailRouteArgs(
            key: key,
            id: id,
            canConfirm: canConfirm,
          ),
          initialChildren: children,
        );

  static const String name = 'AppointmentDetailRoute';

  static const _i9.PageInfo<AppointmentDetailRouteArgs> page =
      _i9.PageInfo<AppointmentDetailRouteArgs>(name);
}

class AppointmentDetailRouteArgs {
  const AppointmentDetailRouteArgs({
    this.key,
    required this.id,
    this.canConfirm = false,
  });

  final _i10.Key? key;

  final String id;

  final bool canConfirm;

  @override
  String toString() {
    return 'AppointmentDetailRouteArgs{key: $key, id: $id, canConfirm: $canConfirm}';
  }
}

/// generated route for
/// [_i5.DoctorDetailPage]
class DoctorDetailRoute extends _i9.PageRouteInfo<DoctorDetailRouteArgs> {
  DoctorDetailRoute({
    _i10.Key? key,
    required String id,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          DoctorDetailRoute.name,
          args: DoctorDetailRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'DoctorDetailRoute';

  static const _i9.PageInfo<DoctorDetailRouteArgs> page =
      _i9.PageInfo<DoctorDetailRouteArgs>(name);
}

class DoctorDetailRouteArgs {
  const DoctorDetailRouteArgs({
    this.key,
    required this.id,
  });

  final _i10.Key? key;

  final String id;

  @override
  String toString() {
    return 'DoctorDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i6.DoctorFormPage]
class DoctorFormRoute extends _i9.PageRouteInfo<DoctorFormRouteArgs> {
  DoctorFormRoute({
    _i10.Key? key,
    _i12.Doctor? doctor,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          DoctorFormRoute.name,
          args: DoctorFormRouteArgs(
            key: key,
            doctor: doctor,
          ),
          initialChildren: children,
        );

  static const String name = 'DoctorFormRoute';

  static const _i9.PageInfo<DoctorFormRouteArgs> page =
      _i9.PageInfo<DoctorFormRouteArgs>(name);
}

class DoctorFormRouteArgs {
  const DoctorFormRouteArgs({
    this.key,
    this.doctor,
  });

  final _i10.Key? key;

  final _i12.Doctor? doctor;

  @override
  String toString() {
    return 'DoctorFormRouteArgs{key: $key, doctor: $doctor}';
  }
}

/// generated route for
/// [_i7.DoctorListPage]
class DoctorListRoute extends _i9.PageRouteInfo<void> {
  const DoctorListRoute({List<_i9.PageRouteInfo>? children})
      : super(
          DoctorListRoute.name,
          initialChildren: children,
        );

  static const String name = 'DoctorListRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.MemberDetailPage]
class MemberDetailRoute extends _i9.PageRouteInfo<MemberDetailRouteArgs> {
  MemberDetailRoute({
    _i10.Key? key,
    required String id,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          MemberDetailRoute.name,
          args: MemberDetailRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'MemberDetailRoute';

  static const _i9.PageInfo<MemberDetailRouteArgs> page =
      _i9.PageInfo<MemberDetailRouteArgs>(name);
}

class MemberDetailRouteArgs {
  const MemberDetailRouteArgs({
    this.key,
    required this.id,
  });

  final _i10.Key? key;

  final String id;

  @override
  String toString() {
    return 'MemberDetailRouteArgs{key: $key, id: $id}';
  }
}
