import 'package:flutter/material.dart';

import '../constans.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 36,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            spreadRadius: 5,
            blurRadius: 5,
            offset: Offset(0, 4),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
      ),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            hintText: "Busca tu flor",
            hintStyle: TextStyle(fontFamily: 'Gilroy', color: Colors.black),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            suffixIcon: Material(
              elevation: 1,
              color: kprimaryColor,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(13),
                  topRight: Radius.circular(13)),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            )),
        cursorColor: kSecondColor,
      ),
    );
  }
}
