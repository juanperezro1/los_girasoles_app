class Categoria {
  final String nombre, imagen;

  Categoria({this.nombre, this.imagen});
}


List<Categoria> categorias = [
  Categoria(nombre: 'Crea tu ramo', imagen: 'assets/images/ramo.svg'),
  Categoria(nombre: 'Cumpleaños', imagen: ''),
  Categoria(nombre: 'Pareja', imagen: ''),
  Categoria(nombre: 'Matrimonio', imagen: ''),
  Categoria(nombre: 'Nacimiento', imagen: ''),
];
