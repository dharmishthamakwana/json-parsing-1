import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled16/screen/json/provider/post_provider.dart';

import 'screen/json/view/post_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PostProvider(),
        )
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {'/': (context) => PostScreen()}),
    ),
  );
}
