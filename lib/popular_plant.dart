import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tamanku_app/data.dart';

final formatRupiah = new NumberFormat("#,##0", "en_US");

Widget buildPopularTanaman(Tanaman tanaman, int index) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    ),
    margin: EdgeInsets.only(
        right: index != null ? 16 : 0, left: index == 0 ? 16 : 0),
    width: 220,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 190,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(tanaman.images),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: Center(),
        ),
        SizedBox(
          height: 18,
        ),
        Padding(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Text(
            tanaman.nama,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              height: 1,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.only(left: 16, right: 8),
          child: Align(
            alignment: Alignment.centerRight,
            child: Row(
              children: [
                Text(
                  'Rp. ${formatRupiah.format(tanaman.harga)}',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    height: 1,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  margin: EdgeInsets.only(left: 70),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Icon(
                      Icons.add_shopping_cart,
                      color: Colors.yellow,
                      size: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
