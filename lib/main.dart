 import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerbasics/home.dart';
import 'package:providerbasics/provider.dart';

void main (){
  runApp( const Myapp());
 }
 class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>NumberListProvider())
      ],
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}