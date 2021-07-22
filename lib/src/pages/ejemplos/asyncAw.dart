void main() async {
  print('Antes de la Petición');

  //final data =await  httpGet('https://www.noseuq.com/aliens');
  //print (data);

  print(await httpGet('http://www.intercambiosvirtuales.org/afap'));

  //final nombre = await getNombre('10');
  //print (nombre);
  //getNombre('CEO').then( print );
  //getNombre('CEO').then( (data) => print(data) );

  print('Fin del Programa');
}

Future<String> getNombre(String id) async {
  return '$id - Andres';
}

Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 3), () => 'Hola Mundo - 3 Segundos');
}
