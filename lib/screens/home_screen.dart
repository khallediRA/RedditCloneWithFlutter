import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:springredditclone/widgets/common.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ScrollController? _scrollController;
  @override
  void initState() {
    _scrollController = new ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.white,
        leadingWidth: 100.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Image.asset(
            "assets/images/Reddit_logo.png",
            fit: BoxFit.fitWidth,
            height: 40,
            filterQuality: FilterQuality.high,
          ),
        ),
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: SearchBar(),
        ),
        actions: [
          const SizedBox(
            width: 80,
          ),
          const Padding(padding: EdgeInsets.all(3.0), child: LoginButton()),
          const SizedBox(
            width: 10.0,
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: SignupButton(),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
                child: Icon(
                  Icons.person_outline_outlined,
                  size: 30.0,
                  color: Colors.grey[700],
                ),
              ),
              FunctionsWidget(),
            ],
          ),
          const SizedBox(
            width: 30.0,
          ),
        ],
      ),
      body: BodyWidget(),
    );
  }
}
