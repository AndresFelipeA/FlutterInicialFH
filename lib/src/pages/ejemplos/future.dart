void main() {
  print('Antes de la Petición');

  httpGet('https://www.noseuq.com/aliens').then((data) {
    print(data.toUpperCase());
  });
  print('Fin del Programa');
}

Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 3), () => 'Hola Mundo - 3 Segundos');
}
