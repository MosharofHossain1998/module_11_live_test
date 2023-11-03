import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String,dynamic>>  weatherInformationList =
  [

    {

      "city": "New York",

      "temperature": 20,

      "condition": "Clear",

      "humidity": 60,

      "windSpeed": 5.5

    },

    {

      "city": "Los Angeles",

      "temperature": 25,

      "condition": "Sunny",

      "humidity": 50,

      "windSpeed": 6.8

    },

    {

      "city": "London",

      "temperature": 15,

      "condition": "Partly Cloudy",

      "humidity": 70,

      "windSpeed": 4.2

    },

    {

      "city": "Tokyo",

      "temperature": 28,

      "condition": "Rainy",

      "humidity": 75,

      "windSpeed": 8.0

    },

    {

      "city": "Sydney",

      "temperature": 22,

      "condition": "Cloudy",

      "humidity": 55,

      "windSpeed": 7.3

    }

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Info App'),
      ),
      body: ListView.builder(
          itemCount: weatherInformationList.length,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.only(left: 12,top: 5,bottom: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('City: ${weatherInformationList[index]['city']}',style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                      Text('Temperature: ${weatherInformationList[index]['temperature']}°C',style: const TextStyle(color: Colors.grey,fontSize: 18),),
                      Text('Condition: ${weatherInformationList[index]['condition']}',style: const TextStyle(color: Colors.grey,fontSize: 18)),
                      Text('Humidity: ${weatherInformationList[index]['humidity']}%',style: const TextStyle(color: Colors.grey,fontSize: 18)),
                      Text('Wind Speed: ${weatherInformationList[index]['windSpeed']} m/s',style: const TextStyle(color: Colors.grey,fontSize: 18)),




                    ],

                  ),
                ),
              ),
            );
          }),
    );
  }
}
