
import 'package:flutter/material.dart';
import 'package:fluttertsk11/provider/fav_provider.dart';
import 'package:provider/provider.dart';

import 'home.dart';
void main(){
  runApp(
      ChangeNotifierProvider(
        create: (context) => FavoriteProvider(),

        child: const MaterialApp(
          home: Fav(),
          debugShowCheckedModeBanner: false,

        ),
      ));
}