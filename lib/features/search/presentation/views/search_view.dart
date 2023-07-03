import 'package:flutter/material.dart';
import 'widgets/search_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: SearchBody(),
        ),
      ),
    );
  }
}




