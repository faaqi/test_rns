import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:test_rns/models/BreweryModel.dart';

class BreweriesProvider extends ChangeNotifier {
  List<BreweryModel> breweries = [];

  bool isLoading = false;

  int selectedIndex = 0;

  Future getBreweriesData() async {
    try {
      var response = await Dio().get(
        'https://api.openbrewerydb.org/breweries',
        options: Options(
//          headers: {'Authorization': 'Bearer $token'},
          followRedirects: false,
        ),
      );

      var data = response.data;
      log('data is = $data');

      print('status code is = ${response.statusCode}');

      if (response.statusCode == 200) {
        breweries.clear();

        breweries = List<BreweryModel>.from(
            data.map((model) => BreweryModel.fromJson(model)));
      } else if (response.statusCode == 500) {
        // log('spending monthly : ');
      }
    } catch (e) {
      log('${e.toString()}');
    }
  }
}
