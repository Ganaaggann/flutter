import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:insta/screens/login_screen.dart';
import 'package:insta/screens/singup_screen.dart';
import 'home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
      apiKey: "AIzaSyA-9WbZTFKWzphOBfmdXnhUYMHo3NcUUKI",
      appId: "1:330747923382:web:6e63b87842ec89a0f88f17",
      messagingSenderId: "330747923382",
      projectId: "instagram-a9d24",
      storageBucket: "instagram-a9d24.appspot.com",
    ));
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        iconTheme: IconThemeData(color: Color.fromRGBO(40, 40, 40, 1)),
        appBarTheme: AppBarTheme(
            elevation: 1,
            color: Colors.white,
            iconTheme: IconThemeData(color: Color.fromRGBO(40, 40, 40, 1))),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyApp(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 0;
                  });
                },
                icon: Icon(
                  Icons.home,
                  color: currentPage == 0
                      ? Color.fromRGBO(203, 73, 101, 1)
                      : Color.fromRGBO(40, 40, 40, 1),
                )),
            Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 1;
                  });
                },
                icon: Icon(
                  Icons.search,
                  color: currentPage == 1
                      ? Color.fromRGBO(203, 73, 101, 1)
                      : Color.fromRGBO(40, 40, 40, 1),
                )),
            Spacer(),
            IconButton(onPressed: () {}, icon: Icon(Icons.ondemand_video)),
            Spacer(),
            IconButton(onPressed: () {}, icon: Icon(Icons.card_travel)),
            Spacer(),
            IconButton(onPressed: () {}, icon: Icon(Icons.person))
          ],
        ),
      ),
    );
  }
}
