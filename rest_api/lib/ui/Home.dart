import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/model/CountryModel.dart';
import 'package:rest_api/network/api_service.dart';
import 'package:dio/dio.dart';
import 'package:rest_api/ui/DetailScreen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CountryLists"),
      ),
      body: FutureBuilder<List<CountryModel>>(
          future: ApiService(Dio())
            .getAllCountries(),
          builder: (context, snapshot){
            if(snapshot.hasData){
              List<CountryModel>? list = snapshot.data;
                  return ListView.builder(
                      itemCount: list!.length,
                      itemBuilder: (context, position){
                        return listItem(list[position], context);
                      });

            }
            else if(snapshot.hasError) return Text("Error");
            return Center(child: CircularProgressIndicator());
          }),
    );
  }
}

Widget listItem(CountryModel countryList, BuildContext context){
  return ListTile(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => Detailscreen(countryList.cca2)));
    } ,
    leading: CachedNetworkImage(
      imageUrl: "https://flagsapi.com/${countryList.cca2}/flat/64.png",
      width: 100,
      height: 100,
      placeholder: (_,_) => Center(child: CircularProgressIndicator()) ),
    title: Text(countryList.name.common),
    subtitle: Text(countryList.region),
  );
}
