import 'package:flutter/material.dart';
import 'package:wiseapp/pages/home_page.dart';
import 'package:wiseapp/pages/text_to_speech.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:wiseapp/pages/video_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyDR5NfDnDPBggkwTnQEqiaoQu65tyBNJ9o",
      projectId: "wiseapp-22256", // This is where you paste your Firebase project ID
      storageBucket: "wiseapp-22256.appspot.com",
      messagingSenderId: "798895064061",
      appId: "1:798895064061:android:294c7c61af35d3ee898f94",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple, // Change primarySwatch to use swatch colors
        ),
      ),
      home: HomePage(),
    );
  }
}