class Categoria {
  final String nombre, imagen;

  Categoria({this.nombre, this.imagen});
}


List<Categoria> categorias = [
  Categoria(nombre: 'Crea tu ramo', imagen: 'assets/images/ramo.svg'),
  Categoria(nombre: 'Cumpleaños', imagen: 'assets/images/birthday.svg'),
  Categoria(nombre: 'Pareja', imagen: 'assets/images/couple.svg'),
  Categoria(nombre: 'Matrimonio', imagen: 'assets/images/ring.svg'),
  Categoria(nombre: 'Nacimiento', imagen: 'assets/images/baby.svg'),
];
