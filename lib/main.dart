import 'package:flutter/material.dart';

void main() {
  const buildTime = String.fromEnvironment(
    'BUILD_TIME',
    defaultValue: 'TestTime',
  );
  const appVersion = String.fromEnvironment(
    'APP_VERSION',
    defaultValue: '1.0.0',
  );

  runApp(MyApp(buildTime: buildTime, version: appVersion));
}

class MyApp extends StatelessWidget {
  final String buildTime;
  final String version;

  const MyApp({super.key, required this.buildTime, required this.version});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '🚀 ResCon\'27',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                const SizedBox(height: 20),
                Text(
                  'Version: $version',
                  style: const TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Built at: $buildTime',
                  style: const TextStyle(color: Colors.white70),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'This is a surprise quiz question! Answer this question to win goodies',
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Text(
                  'What is required for the test file to have as a suffix to run the flutter test?',
                  style: const TextStyle(color: Colors.cyan, fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
