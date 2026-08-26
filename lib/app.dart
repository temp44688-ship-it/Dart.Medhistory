import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'features/consultation/presentation/pages/consultation_page.dart';
import 'features/history/presentation/pages/history_page.dart';
import 'features/home/presentation/pages/home_page.dart';
import 'features/profile/presentation/pages/profile_page.dart';
import 'features/search/presentation/pages/search_page.dart';
import 'theme/app_theme.dart';

class MedHistoryApp extends StatelessWidget {
  const MedHistoryApp({super.key});

  static final GoRouter _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (_, __) => const HomePage()),
      GoRoute(path: '/consultation', builder: (_, __) => const ConsultationPage()),
      GoRoute(path: '/history', builder: (_, __) => const HistoryPage()),
      GoRoute(path: '/search', builder: (_, __) => const SearchPage()),
      GoRoute(path: '/profile', builder: (_, __) => const ProfilePage()),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'MedHistory',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      routerConfig: _router,
    );
  }
}
