import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/model/CountryDetail.dart';
import 'package:rest_api/network/api_service.dart';

class DetailScreen extends StatelessWidget {
  final ApiService apiService;
  final String cca2;
  const DetailScreen({super.key, required this.apiService, required this.cca2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Screen")),
          body: FutureBuilder<List<CountryDetail>>(
              future: apiService.getCountryDetail(code: cca2),
              builder: (context, snapshot){
                if(snapshot.hasData){
                  CountryDetail detail = snapshot.data!.first;
                  return ListView(
                    children: [
                      Center(child: Text("${detail.region}", style: TextStyle(fontSize: 22))),
                      Center(child: Text("SubRegion is ${detail.subregion}", style: TextStyle(fontSize:18))),
                      Center(child: Text("Population is ${detail.population}", style: TextStyle(fontSize: 18)))
                    ],
                  );
                }
                else if(snapshot.hasError) return Text("Error");
                return Center(child: CircularProgressIndicator());
              }),
    );
  }
}
