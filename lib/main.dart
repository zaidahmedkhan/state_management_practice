// -------------set state ---------------

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:testing/setstate/set_state_eg.dart';

// void main() {
//   runApp(GetMaterialApp(home: const MyApp()));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(
//             seedColor: const Color.from(
//                 alpha: 1, red: 0.227, green: 0.298, blue: 0.592)),
//         useMaterial3: true,
//       ),
//       home: const SetStateExample(title: "Set State"), // for set state
//     );
//   }
// }

// --------------- getx ------------------

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:testing/getx/getx_example.dart';

// void main() {
//   runApp(
//       GetMaterialApp(debugShowCheckedModeBanner: false, home: GetxExample()));
// }

// ----------------Provider ---------------------------

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_practice/provider/counter_provider.dart';
import 'package:state_management_practice/provider/provider_example.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => CounterProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProviderExample(),
    );
  }
}
