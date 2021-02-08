import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AreglosDestacados extends StatelessWidget {
  const AreglosDestacados({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            "Destacadas",
            style: TextStyle(
                fontFamily: 'Sofia Pro',
                fontSize: 21,
                color: Color(0xFFF303030)),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            height: 160,
            width: 160,
            decoration: BoxDecoration(
              color: Color(0xFFFFEBABA),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 30,
                  color: Colors.grey[200],
                )
              ],
            ),
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: SvgPicture.asset('assets/images/sueño-rosa.svg'),
                    ),
                    Row(
                      children: <Widget>[
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 15),
                              child: Text(
                                'Sueño Rosa',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Sofia Pro',
                                    fontSize: 15,
                                    color: Colors.white),
                              ),
                            ),
                            Text(
                              '\$ 170.000',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Gilroy',
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Container(
                            padding: EdgeInsets.only(left: 30),
                            child: SvgPicture.asset('assets/images/wish.svg'))
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
