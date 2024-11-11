import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'forgot_password.dart';
import 'login_screen.dart';
import 'register_screen.dart';
import 'screens/Home/home_screen.dart';
import 'screens/akun_screen.dart';
import 'provider/favorite_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FavoriteProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/forgot_password': (context) => ForgotPasswordScreen(),
        '/register': (context) => RegisterScreen(),
        '/akun': (context) => AkunScreen(),
      },
    );
  }
}
