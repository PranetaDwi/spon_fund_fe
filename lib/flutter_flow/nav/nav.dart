import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/auth/custom_auth/custom_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  FundationAuthUser? initialUser;
  FundationAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(FundationAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const NavBarPage() : const SplachOnlyLogoWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const NavBarPage() : const SplachOnlyLogoWidget(),
        ),
        FFRoute(
          name: 'splach_Only_Logo',
          path: '/splachOnlyLogo',
          builder: (context, params) => const SplachOnlyLogoWidget(),
        ),
        FFRoute(
          name: 'splash_Introduction',
          path: '/splashIntroduction',
          builder: (context, params) => const SplashIntroductionWidget(),
        ),
        FFRoute(
          name: 'login',
          path: '/login',
          builder: (context, params) => const LoginWidget(),
        ),
        FFRoute(
          name: 'profil-fiks',
          path: '/profil-entrepreneur',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'profil-fiks')
              : const ProfilFiksWidget(),
        ),
        FFRoute(
          name: 'home',
          path: '/home',
          builder: (context, params) =>
              params.isEmpty ? const NavBarPage(initialPage: 'home') : const HomeWidget(),
        ),
        FFRoute(
          name: 'event',
          path: '/event',
          builder: (context, params) => const NavBarPage(
            initialPage: '',
            page: EventWidget(),
          ),
        ),
        FFRoute(
          name: 'detailEvent',
          path: '/detailEvent',
          builder: (context, params) => const DetailEventWidget(),
        ),
        FFRoute(
          name: 'registrasiEntrepreneur',
          path: '/registrasi_entrepreneur',
          builder: (context, params) => const RegistrasiEntrepreneurWidget(),
        ),
        FFRoute(
          name: 'sponsor',
          path: '/sponsor',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'sponsor')
              : const SponsorWidget(),
        ),
        FFRoute(
          name: 'cobaGetDataKategori',
          path: '/cobaGetDataKategori',
          builder: (context, params) => const CobaGetDataKategoriWidget(),
        ),
        FFRoute(
          name: 'uploadgambar',
          path: '/upload_gambar',
          builder: (context, params) => const UploadgambarWidget(),
        ),
        FFRoute(
          name: 'ubahDataProfile',
          path: '/ubahDataProfile',
          builder: (context, params) => const UbahDataProfileWidget(),
        ),
        FFRoute(
          name: 'ubahNama',
          path: '/ubahNama',
          builder: (context, params) => const UbahNamaWidget(),
        ),
        FFRoute(
          name: 'ubahEmail',
          path: '/ubahEmail',
          builder: (context, params) => const UbahEmailWidget(),
        ),
        FFRoute(
          name: 'ubahNomor',
          path: '/ubahNomor',
          builder: (context, params) => const UbahNomorWidget(),
        ),
        FFRoute(
          name: 'ubahDataOrganizer',
          path: '/ubahDataOrganizer',
          builder: (context, params) => const UbahDataOrganizerWidget(),
        ),
        FFRoute(
          name: 'changePassword',
          path: '/changePassword',
          builder: (context, params) => const ChangePasswordWidget(),
        ),
        FFRoute(
          name: 'eventPopuler',
          path: '/eventPopuler',
          builder: (context, params) => const NavBarPage(
            initialPage: '',
            page: EventPopulerWidget(),
          ),
        ),
        FFRoute(
          name: 'eventByCategory',
          path: '/eventByCategory',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: EventByCategoryWidget(
              categoryId: params.getParam(
                'categoryId',
                ParamType.int,
              ),
              categoryName: params.getParam(
                'categoryName',
                ParamType.String,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'eventKuliner',
          path: '/eventKuliner',
          builder: (context, params) => const NavBarPage(
            initialPage: '',
            page: EventKulinerWidget(),
          ),
        ),
        FFRoute(
          name: 'eventPendidikan',
          path: '/eventPendidikan',
          builder: (context, params) => const NavBarPage(
            initialPage: '',
            page: EventPendidikanWidget(),
          ),
        ),
        FFRoute(
          name: 'event2',
          path: '/event2',
          builder: (context, params) => const NavBarPage(
            initialPage: '',
            page: Event2Widget(),
          ),
        ),
        FFRoute(
          name: 'tambahSponsor',
          path: '/tambahSponsor',
          builder: (context, params) => const TambahSponsorWidget(),
        ),
        FFRoute(
          name: 'daftarSponsor',
          path: '/daftarSponsor',
          builder: (context, params) => const DaftarSponsorWidget(),
        ),
        FFRoute(
          name: 'chatDetailEvent',
          path: '/chatDetailEvent',
          builder: (context, params) => const ChatDetailEventWidget(),
        ),
        FFRoute(
          name: 'pesan',
          path: '/pesan',
          builder: (context, params) =>
              params.isEmpty ? const NavBarPage(initialPage: 'pesan') : const PesanWidget(),
        ),
        FFRoute(
          name: 'pesandetail',
          path: '/pesandetail',
          builder: (context, params) => const PesandetailWidget(),
        ),
        FFRoute(
          name: 'listTransaksi',
          path: '/listTransaksi',
          builder: (context, params) => const ListTransaksiWidget(),
        ),
        FFRoute(
          name: 'accordion',
          path: '/accordion',
          builder: (context, params) => const AccordionWidget(),
        ),
        FFRoute(
          name: 'tambahEvent1',
          path: '/tambahEvent1',
          builder: (context, params) => const TambahEvent1Widget(),
        ),
        FFRoute(
          name: 'tambahEvent2',
          path: '/tambahEvent2',
          builder: (context, params) => const TambahEvent2Widget(),
        ),
        FFRoute(
          name: 'tambahEvent3',
          path: '/tambahEvent3',
          builder: (context, params) => const TambahEvent3Widget(),
        ),
        FFRoute(
          name: 'tambahEvent4',
          path: '/tambahEvent4',
          builder: (context, params) => TambahEvent4Widget(
            eventCreatedId: params.getParam(
              'eventCreatedId',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'tambahEvent5',
          path: '/tambahEvent5',
          builder: (context, params) => const TambahEvent5Widget(),
        ),
        FFRoute(
          name: 'registrasiOrganizer',
          path: '/registrasiOrganizer',
          builder: (context, params) => const RegistrasiOrganizerWidget(),
        ),
        FFRoute(
          name: 'registrasiTambahOrganizer',
          path: '/registrasiTambahOrganizer',
          builder: (context, params) => const RegistrasiTambahOrganizerWidget(),
        ),
        FFRoute(
          name: 'homeOrganizer',
          path: '/homeOrganizer',
          builder: (context, params) => const NavBarPage(
            initialPage: '',
            page: HomeOrganizerWidget(),
          ),
        ),
        FFRoute(
          name: 'penerima',
          path: '/penerima',
          builder: (context, params) => const PenerimaWidget(),
        ),
        FFRoute(
          name: 'nominal',
          path: '/nominal',
          builder: (context, params) => const NominalWidget(),
        ),
        FFRoute(
          name: 'pencairanDana',
          path: '/pencairanDana',
          builder: (context, params) => const PencairanDanaWidget(),
        ),
        FFRoute(
          name: 'pencairanDanaGagal',
          path: '/pencairanDanaGagal',
          builder: (context, params) => const PencairanDanaGagalWidget(),
        ),
        FFRoute(
          name: 'ubahEvent1',
          path: '/ubahEvent1',
          builder: (context, params) => UbahEvent1Widget(
            eventId2: params.getParam(
              'eventId2',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'ubahKontraprestasi',
          path: '/ubahKontraprestasi',
          builder: (context, params) => UbahKontraprestasiWidget(
            eventId: params.getParam(
              'eventId',
              ParamType.int,
            ),
            kontraprestasiId: params.getParam(
              'kontraprestasiId',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'tambahKontraprestasi',
          path: '/tambahKontraprestasi',
          builder: (context, params) => TambahKontraprestasiWidget(
            eventId: params.getParam(
              'eventId',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'tambahEventtt',
          path: '/tambahEventtt',
          builder: (context, params) => const TambahEventttWidget(),
        ),
        FFRoute(
          name: 'Expandable',
          path: '/expandable',
          builder: (context, params) => const ExpandableWidget(),
        ),
        FFRoute(
          name: 'registrasiTambahOrganisasi',
          path: '/registrasi_organisasi',
          builder: (context, params) => RegistrasiTambahOrganisasiWidget(
            userRegistrationId: params.getParam(
              'userRegistrationId',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'registrasiTambahMitra',
          path: '/registrasi_mitra',
          builder: (context, params) => RegistrasiTambahMitraWidget(
            userRegistrationId: params.getParam(
              'userRegistrationId',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'pesanBelumLogin',
          path: '/pesanBelumLogin',
          builder: (context, params) => const NavBarPage(
            initialPage: '',
            page: PesanBelumLoginWidget(),
          ),
        ),
        FFRoute(
          name: 'akunBelumLogin',
          path: '/akunBelumLogin',
          builder: (context, params) => const NavBarPage(
            initialPage: '',
            page: AkunBelumLoginWidget(),
          ),
        ),
        FFRoute(
          name: 'events',
          path: '/events',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'events')
              : const EventsWidget(),
        ),
        FFRoute(
          name: 'detailEventPOVOrganizer',
          path: '/detailEventForOrganizer',
          builder: (context, params) => const DetailEventPOVOrganizerWidget(),
        ),
        FFRoute(
          name: 'listKontraprestasi',
          path: '/listKontraprestasi',
          builder: (context, params) => const ListKontraprestasiWidget(),
        ),
        FFRoute(
          name: 'ubahDataMitra',
          path: '/ubahDataMitra',
          builder: (context, params) => const UbahDataMitraWidget(),
        ),
        FFRoute(
          name: 'asdasd',
          path: '/asdasd',
          builder: (context, params) => const AsdasdWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/splachOnlyLogo';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/log.png',
                    fit: BoxFit.contain,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
