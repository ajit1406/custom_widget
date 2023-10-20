import 'package:custom_widget_173/app_widgets/app_rounded_btn.dart';
import 'package:custom_widget_173/new_ui.dart';
import 'package:custom_widget_173/ui_helper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: NewUIPage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Widget'),
      ),
      body: Column(
        children: [
          AppRoundedBtn(
              bgColor: Colors.blueGrey,
              mWidth: 500,
              mIcon: Icons.login,
              btnName: 'Login',
              onTap: () {
                print("Authenticating..");
              }),
          SizedBox(
            height: 11,
          ),
          AppRoundedBtn(
            bgColor: Colors.orange,
            btnName: 'Play',
            onTap: () {
              print("Playing..");
            },
          ),
          SizedBox(
            height: 11,
          ),
          AppRoundedBtn(
            mWidth: 400,
            btnName: 'Start',
            onTap: () {
              print("Starting..");
            },
          ),
          SizedBox(
            height: 11,
          ),
          TextField(
            decoration: UIHelper.mDecoration(mLabel: "Email", hint: "Enter your Email.."),
          ),
          TextField(
            decoration: UIHelper.mDecoration(mLabel: "Name", hint: "Enter your Name..", bColor: Colors.blue, bRadius: 5, bWidth: 4),
          )
        ],
      ),
    );
  }
}
