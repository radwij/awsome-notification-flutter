import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/second_screen.dart';
import 'services/notification_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationService.initializeNotification();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notification Demo',
      navigatorKey: navigatorKey,
      routes: {
        'home': (context) => const HomeScreen(),
        'second': (context) => const SecondScreen(),
      },
      initialRoute: 'home',
    );
  }
}
