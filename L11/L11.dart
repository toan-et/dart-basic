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
    dynamic avengerName = response["Avenger"]["name"];
    dynamic avengersexual = response["Avenger"]["sexual"];
    switch (type) {
      case "Thanos":
        Thanos(name: avengerName, sexual: avengersexual);
        break;
      case "Thor":
        Thor(name: avengerName, sexual: avengersexual);
        break;
      case "CaptainAmerica":
        CaptainAmerica(name: avengerName, sexual: avengersexual);
        break;
    }
    Avenger.showInfo();
  }
}

createAvengers_new(int length, int start, Future temp) {
  if (start < length) {
    String type = Avengers.getFileNameFromUrl(urlAvengers[start]);
    temp = temp.then((onValue) {
      Avengers.fetchAvenger(urlAvengers[start]).then((response) {
        dynamic avengerName = response["Avenger"]["name"];
        dynamic avengersexual = response["Avenger"]["sexual"];
        switch (type) {
          case "Thanos":
            Thanos(name: avengerName, sexual: avengersexual);
            break;
          case "Thor":
            Thor(name: avengerName, sexual: avengersexual);
            break;
          case "CaptainAmerica":
            CaptainAmerica(name: avengerName, sexual: avengersexual);
            break;
        }
        Avenger.showInfo();
      });
    });
    return createAvengers_new(length, start + 1, temp);
  } else
    return null;
}

void main() async {
  print(
      '============ L11.2 - Call Default Factory Constructor Orderly ============');
  //await createAvengers(urlAvengers);
  Future resultfirst = fetchAvengerFirst();

  createAvengers_new(urlAvengers.length, 1, resultfirst);
  print(
      '============ L11.1 - Call Named factory constructor create any avenger ============');
  //Thor thor = Avenger.fromURL(urlAvengers[0]);
}

fetchAvengerFirst() {
  return Avengers.fetchAvenger(urlAvengers[0]).then((response) {
    String type = Avengers.getFileNameFromUrl(urlAvengers[0]);
    dynamic avengerName = response["Avenger"]["name"];
    dynamic avengersexual = response["Avenger"]["sexual"];
    switch (type) {
      case "Thanos":
        Thanos(name: avengerName, sexual: avengersexual);
        break;
      case "Thor":
        Thor(name: avengerName, sexual: avengersexual);
        break;
      case "CaptainAmerica":
        CaptainAmerica(name: avengerName, sexual: avengersexual);
        break;
    }
    Avenger.showInfo();
  });
}
