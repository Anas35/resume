import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume/models/resume.dart';
import 'package:resume/widgets/views/landscape.dart';
import 'package:resume/widgets/views/portrait.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final Future<Resume> resume;

  Future<Resume> loadJsonData() async {
    String data = await rootBundle.loadString("assets/resume.json");
    final jsonResult = jsonDecode(data) as Map<String, dynamic>;
    return Resume.fromJson(jsonResult);
  }

  @override
  void initState() {
    super.initState();
    resume = loadJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Times New Roman',
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FutureBuilder<Resume>(
            future: resume,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('${snapshot.error}'));
              } else if (snapshot.hasData && snapshot.data != null) {
                return LayoutBuilder(
                  builder: (context, constraints) {
                    if (constraints.maxWidth > 850) {
                      return LandscapeView(resume: snapshot.data!);
                    } else {
                      return PortraitView(resume: snapshot.data!);
                    }
                  },
                );
              } else {
                return const Center(child: Text('Something never wrong'));
              }
            },
          ),
        ),
      ),
    );
  }
}



