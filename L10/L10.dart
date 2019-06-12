import 'package:http/http.dart' as http;
import 'dart:convert' as JSON;

abstract class Avenger {
  String type;
  String _name;
  String _sexual;

  Avenger.info({String name, String sexual}) {
    _name = name;
    _sexual = sexual;
  }

  factory Avenger({String type, String name, String sexual}) {
    switch (type) {
      case "Thor":
        return Thor(name: name, sexual: sexual);
      case "CaptainAmerica":
        return CaptainAmerica();
      default:
        throw "The '$type' is not an avenger";
    }
  }

  void showInfo() {
    print('========= Basic info ==========');
    print('Name: $_name');
    print('Sexual: $_sexual');
  }
}

class Thor extends Avenger {
  Thor({String type, String name, String sexual})
      : super.info(name: name, sexual: sexual);

  Future<dynamic> fetchMjolnir() async {
    try {
      final response =
          await http.get('https://blogspotscraping.herokuapp.com/mjolnir.json');
      if (response.statusCode == 200) {
        // If server returns an OK response, parse the JSON
        print('Fetched hammer');
        return JSON.jsonDecode((response.body));
      } else {
        // If that response was not OK, throw an error.
        print('Failed to load post');
      }
    } catch (e) {
      print(e);
    }
  }

  void findGadget() async {
    var name = await fetchMjolnir();
    //super.gadget = Gadget(name["Gadget"]);
  }
}

class CaptainAmerica extends Avenger implements Thor {
  CaptainAmerica({dynamic type, String name, String sexual})
      : super.info(name: name, sexual: sexual);

  Future<dynamic> fetchMjolnir() async {}
  void findGadget() async {}
}

void main() {
  Thor thorFactoryMade = Thor(
      type: avengers[0].runtimeType.toString(),
      name: 'Thor Factorymade',
      sexual: 'Male');
  Thor thorHomeMade = Thor(name: 'Thor Homemade', sexual: 'Male');
  thorFactoryMade.showInfo();
  thorHomeMade.showInfo();
}

List<dynamic> avengers = [
  Thor(name: 'Thần Sét', sexual: 'Male'),
  CaptainAmerica(
    name: 'Lớp trưởng Mỹ',
    sexual: 'Male',
  ),
];
