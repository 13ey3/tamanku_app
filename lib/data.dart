class Tanaman {
  String nama;
  double harga;
  String images;

  Tanaman(this.nama, this.harga, this.images);
}

List<Tanaman> getTanamanList() {
  return <Tanaman>[
    Tanaman(
      "Aglonema Red Sumatra",
      150000,
      "asstes/images/aglonema.jpg",
    ),
    Tanaman(
      "Aglonema Hijau",
      20000,
      "asstes/images/aglonema.jpg",
    ),
    Tanaman(
      "Anthurium Corong",
      80000,
      "asstes/images/anthurium_corong.jpg",
    ),
    Tanaman(
      "Janda Bolong",
      200000,
      "asstes/images/janda_bolong.jpg",
    ),
    Tanaman(
      "Anthurium Pink",
      100000,
      "asstes/images/anthurium_pink.jpg",
    ),
    Tanaman(
      "Aglonema",
      25000,
      "asstes/images/aglonema.jpg",
    ),
    Tanaman(
      "Hanjuang Andong Merah",
      70000,
      "asstes/images/anthurium_pink.jpg",
    ),
    Tanaman(
      "Kuping Gajah",
      20000,
      "asstes/images/kuping_gajah.jpg",
    ),
  ];
}

class Filter {
  String nama;

  Filter(this.nama);
}

List<Filter> getFilterList() {
  return <Filter>[
    Filter("All"),
    Filter("Outdoor"),
    Filter("Indoor"),
    Filter("Big Plant"),
    Filter("Little Plant"),
  ];
}
