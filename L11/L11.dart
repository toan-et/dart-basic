import 'CaptainAmerica.dart';
import 'Thanos.dart';
import 'Thor.dart';
import 'Avenger.dart';
// import file here

const List<String> urlAvengers = [
  'https://blogspotscraping.herokuapp.com/avengers/Thor.json',
  'https://blogspotscraping.herokuapp.com/avengers/Thanos.json',
  'https://blogspotscraping.herokuapp.com/avengers/CaptainAmerica.json',
];

createAvengers(List<String> urlAvengers) async {
  // todo
  // forced call default factory constructor
  for (var i = 0; i < urlAvengers.length; i++) {
    String type = Avengers.getFileNameFromUrl(urlAvengers[i]);
    dynamic response = await Avengers.fetchAvenger(urlAvengers[i]);
    switch (type) {
      case "Thanos":
        Thanos(
            name: response["Avenger"]["name"],
            sexual: response["Avenger"]["sexual"]);
        break;
      case "Thor":
        Thor(
            name: response["Avenger"]["name"],
            sexual: response["Avenger"]["sexual"]);
        break;
      case "CaptainAmerica":
        CaptainAmerica(
            name: response["Avenger"]["name"],
            sexual: response["Avenger"]["sexual"]);
        break;
    }
    Avenger.showInfo();
  }
}

void main() async {
  print(
      '============ L11.2 - Call Default Factory Constructor Orderly ============');
  await createAvengers(urlAvengers);
  print(
      '============ L11.1 - Call Named factory constructor create any avenger ============');
  Thor thor = Avenger.fromURL(urlAvengers[0]);
}
