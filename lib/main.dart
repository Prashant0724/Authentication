import 'package:authentication/pages/auth_page.dart';
import 'package:authentication/pages/login_page.dart';
import 'package:authentication/pages/register_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
Future main()async {
  WidgetsFlutterBinding.ensureInitialized();
if(kIsWeb){
  await Firebase.initializeApp(options:

  FirebaseOptions(
      apiKey: "AIzaSyAGiDpqDGjZrIaVac2icUQ9F1yBuEVi0AE",
      appId: "1:887610890398:web:d2d728c21d1604e37cc38f",
      messagingSenderId: "887610890398",
      projectId: "authkoko",
  ));
}
await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Authentication',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: LoginPage(),
      // home: AuthPage(),
      home: RegisterPage(),
    );
  }
}