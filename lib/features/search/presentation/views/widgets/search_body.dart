import 'package:bookly/features/search/presentation/maner/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'List_view_search.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              IconButton(onPressed: () {
                Navigator.pop(context);
              }, icon: const Icon(Icons.arrow_back),),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 20, right: 30, bottom: 20),
                  child: TextField(
                    onChanged: (value) {
                      BlocProvider.of<SearchCubit>(context).fetchSearch(
                          value);
                    },
                    decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.search),
                      hintText: 'Search here',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: SearchListView(),
          ),
        ],
      ),
    );
  }
}
