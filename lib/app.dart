import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unit_converter/presentation/provider/converter_provider.dart';
import 'package:unit_converter/presentation/screen/converter_screen.dart';

class UnitConverter extends StatelessWidget {
  const UnitConverter({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ConverterProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Unit Converter',
        theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
        home: ConverterScreen(),
      ),
    );
  }
}
