import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:provider/provider.dart';
import 'package:test_rns/AllProviders/breweries_provider.dart';
import 'package:test_rns/models/BreweryModel.dart';
import 'package:test_rns/screens/view_brewery.dart';
import 'package:test_rns/widgets/brewery_card.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    final _provider = Provider.of<BreweriesProvider>(context, listen: false);

    setState(() {
      _provider.isLoading = true;
    });
    _provider.getBreweriesData().then((value) {
      setState(() {
        _provider.isLoading = false;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _provider = Provider.of<BreweriesProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Brewery'),
        centerTitle: true,
      ),
      body: _provider.isLoading
          ? Center(child: CircularProgressIndicator())
          : Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: ListView.builder(
                      itemCount: _provider.breweries.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return BreweryCard(
                          onCardPress: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ViewBrewery(
                                          provider: _provider,
                                          index: index,
                                        )));
                          },
                          name: _provider.breweries[index].name,
                          country: _provider.breweries[index].country,
                        );
                      }),
                )
              ],
            ),
    );
  }
}
