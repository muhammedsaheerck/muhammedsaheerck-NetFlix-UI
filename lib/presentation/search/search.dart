import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widgets/search_idle.dart';
import 'package:netflix/presentation/search/widgets/search_result.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            CupertinoSearchTextField(
              backgroundColor: Colors.grey.withOpacity(.4),
              prefixIcon:const Icon(CupertinoIcons.search,color: Colors.grey,) ,
              suffixIcon:const  Icon(CupertinoIcons.xmark_circle_fill,color: Colors.grey,),
              style:const TextStyle(color: Colors.white),
            ),
            kheight,
           
          // const Expanded(child:  SearchIdleWidget()),
          const Expanded(child:  SearchResultWidget()),
            ],
      ),
          )),
    );
  }
}
