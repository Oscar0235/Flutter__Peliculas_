import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,

      title: 'Catálogo de Películas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CatalogPage(),
    );
  }
}

class Pelicula {
  final String titulo;
  final String imagenUrl;
  final String genero;

  Pelicula(this.titulo, this.imagenUrl, this.genero);
}

class CatalogPage extends StatelessWidget {
  final List<Pelicula> catalogo = [
    Pelicula(
      "El Conjuro",
      "https://larepublica.cronosmedia.glr.pe/migration/images/JRGHUEEFGVD7JPBYWRJWBNR2RA.jpg",
      "Terror",
    ),
    Pelicula(
      "John Wick",
      "https://m.media-amazon.com/images/M/MV5BMTU2NjA1ODgzMF5BMl5BanBnXkFtZTgwMTM2MTI4MjE@._V1_.jpg",
      "Acción",
    ),
    Pelicula(
      "Gladiador",
      "https://es.web.img3.acsta.net/medias/nmedia/18/70/92/02/20149073.jpg",
      "Acción",
    ),
    Pelicula(
      "Rápido y Furioso",
      "https://www.semana.com/resizer/v2/OPVPGNZRNBFD3OPQWRVR34QQXM.jpg?auth=ba8a7b683120e7989aa9cd870df058e6af502e4ce73c29955ad08ade5c48e550&smart=true&quality=75&width=1280&height=720",
      "Acción",
    ),
    Pelicula(
      "El Origen",
      "https://image.cdn0.buscalibre.com/3593124.__RS360x360__.jpg",
      "Acción",
    ),
  Pelicula("Interestelar", "https://images.hive.blog/0x0/https://files.peakd.com/file/peakd-hive/naath/24244NjaJjVhsKjXLEiUiQM9DByygnAk1hbSF2zecqGfigChpqSDkdewS4pTh58fqEENQ.jpg", "Ciencia Ficción"), 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catálogo de Películas'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
        itemCount: catalogo.length,
        itemBuilder: (context, index) {
          final pelicula = catalogo[index];
          return GestureDetector(
            onTap: () {
              
              print('Has seleccionado ${pelicula.titulo}');
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: Image.network(
                      pelicula.imagenUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      pelicula.titulo,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                    child: Text(pelicula.genero),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}