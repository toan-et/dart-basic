import 'CaptainAmerica.dart';
import 'Thanos.dart';
import 'Thor.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as JSON;

abstract class Avenger {
  static String _name;
  static String _sexual;
  Avenger.forExtendConstructor(
      {String name = "Avenger", String sexual = "Unkown"}) {
    _name = name;
    _sexual = sexual;
  }
  static void showInfo() {
    print('------ Info ------');
    print('Name: $_name');
    print('Sexual: $_sexual');
  }

  factory Avenger(
      {String type, String name = "Avenger", String sexual = "Unkown"}) {
    dynamic avenger;
    switch (type) {
      case Avengers.Thanos:
        avenger = Thanos(name: name, sexual: sexual);
        break;
      case Avengers.Thor:
        avenger = Thor(name: name, sexual: sexual);
        break;
      case Avengers.CaptainAmerica:
        avenger = CaptainAmerica(name: name, sexual: sexual);
        break;
    }
    return avenger;
  }
  // add more named constructor function here
  factory Avenger.fromURL(String url) {
    String type = Avengers.getFileNameFromUrl(url);
    dynamic avenger;
    Avengers.fetchAvenger(url).then((response) {
      dynamic avengerName = response["Avenger"]["name"];
      dynamic avengersexual = response["Avenger"]["sexual"];
      switch (type) {
        case "Thanos":
          avenger = Thanos(name: avengerName, sexual: avengersexual);
          break;
        case "Thor":
          avenger = Thor(name: avengerName, sexual: avengersexual);
          break;
        case "CaptainAmerica":
          avenger = CaptainAmerica(name: avengerName, sexual: avengersexual);
          break;
      }
      _name = avengerName;
      _sexual = avengersexual;
      showInfo();
      return avenger;
    });

    return null;
  }

  void doSkill();
}

class Avengers {
  static const String Thanos = 'Thanos';
  static const String CaptainAmerica = 'Captain America';
  static const String Thor = 'Thor';
  // add more function here

  static getFileNameFromUrl(url) {
    List<String> temp = url.toString().split("/");
    temp = temp[temp.length - 1].toString().split(".");
    return temp[0];
  }

  static Future<dynamic> fetchAvenger(url) async {
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        // If server returns an OK response, parse the JSON
        return JSON.jsonDecode((response.body));
      } else {
        // If that response was not OK, throw an error.
        print('Failed to load post');
      }
    } catch (e) {
      print(e);
    }
  }
}
