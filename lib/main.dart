import 'package:flutter/material.dart';
import 'package:tinder_login_with_facebook/components/button.dart';
import 'package:tinder_login_with_facebook/components/text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(alignment: AlignmentDirectional.center, children: [
          Container(color: Colors.red.shade300),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              height: 200,
              width: 200,
              child: Image.asset('assets/images/logo.png'),
            ),
            const SizedBox(height: 40),
            CustomText(
              text: 'Location Changer',
              fontSize: 20,
              isBold: true,
            ),
            const SizedBox(height: 8),
            CustomText(text: 'Plugin App for tinder'),
            const SizedBox(height: 16),
            const Button(text: 'Login with Facebook')
          ])
        ]),
      ),
    );
  }
}
