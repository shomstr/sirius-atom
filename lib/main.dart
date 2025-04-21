import 'package:flutter/material.dart';

import 'package:sirius/features/presentation/pages/authenfication/start_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); 
 
import 'package:sirius/features/presentation/widgets/map/map.dart';
import 'package:yandex_maps_mapkit_lite/init.dart' as init;

import 'package:sirius/features/presentation/pages/start_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // // Получаем апи ключ Яндекс карт из переменных среды
  // String yandexMapsApiKey = String.fromEnvironment("YANDEX_MAPS_API_KEY", defaultValue: "EMPTY");

  // // Инит карт
  // if (yandexMapsApiKey != "EMPTY") {
  //   await init.initMapkit(
  //     apiKey: yandexMapsApiKey
  //   );
  // }

  await init.initMapkit(
    apiKey: "api-key"
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Атом',
      home: StartPage(), 

      debugShowCheckedModeBanner: false,
      title: 'Атом',
      // home: DefaultMap(),
      home: StartPage()
    );
  }
}