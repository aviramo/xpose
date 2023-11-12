import 'package:flutter/material.dart';
import 'package:xpose/screens/login.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  /// TODO: update Supabase credentials with your own
  await Supabase.initialize(
    url: 'https://tvowaorudwudamsspare.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InR2b3dhb3J1ZHd1ZGFtc3NwYXJlIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTY0MTkwMjcsImV4cCI6MjAxMTk5NTAyN30.1ur3isPZF8do6fuG1nGM_IvqEcmFozAAwvEQWZU1yGk',
  );
  runApp(const MyApp());
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}
