class Producto {
  final String nombre, descripcion, imagen;
  final double precio;

  Producto({this.nombre, this.descripcion, this.precio, this.imagen});
}

List<Producto> productos = [
  Producto(
      nombre: 'Sueño Rosa',
      descripcion: '',
      precio: 170000,
      imagen: 'assets/images/sueno_rosa.svg'),
  Producto(
      nombre: 'Tormenta Purpura',
      descripcion: '',
      precio: 150000,
      imagen: 'assets/images/tormenta_purpura.svg'),
  Producto(
      nombre: 'Lo siento',
      descripcion: '',
      precio: 200000,
      imagen: 'assets/images/lo_siento.svg'),
  Producto(
      nombre: 'Delux',
      descripcion: '',
      precio: 60000,
      imagen: 'assets/images/delux.svg'),
  Producto(
      nombre: 'Romance Europeo',
      descripcion: '',
      precio: 200000,
      imagen: 'assets/images/romance_europeo.svg'),
];
