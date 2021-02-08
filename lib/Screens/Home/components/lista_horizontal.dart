import 'package:flutter/material.dart';

import '../../../constans.dart';

class ListaHorizontal extends StatelessWidget {
  const ListaHorizontal({
    Key key,
    @required this.indexSeleccionado,
  }) : super(key: key);

  final int indexSeleccionado;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: topProductos.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {},
              child: Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        topProductos[index],
                        style: TextStyle(
                            fontFamily: 'Sofia Pro',
                            fontSize: 17,
                            color: index == indexSeleccionado
                                ? Colors.black
                                : Colors.black.withOpacity(0.4)),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
