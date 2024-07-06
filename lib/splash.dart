import 'package:flutter/material.dart';
import 'package:gemini_chatbot/geminichatbot.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 6), () {});
    Navigator.pushReplacement(
      // ignore: use_build_context_synchronously
      context,
      MaterialPageRoute(
        builder: (context) => const GeminiChatBot(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Center(
        child: Stack(
          
          children: [
            Image.network(
              'https://pc-tablet.com/wp-content/uploads/2024/05/Three-Ways-Googles-Gemini-Advanced-Outperforms-Other-AI-Assistants.webp',
              fit: BoxFit.cover,
            ),
            
          ],
        ),
      ),
    );
  }
}