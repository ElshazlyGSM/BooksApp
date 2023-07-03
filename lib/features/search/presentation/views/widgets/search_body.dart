import 'package:flutter/material.dart';
import 'List_view_search.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          TextField(
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.search),
              hintText: 'Search here',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SearchListView(),
        ],
      ),
    );
  }
}
