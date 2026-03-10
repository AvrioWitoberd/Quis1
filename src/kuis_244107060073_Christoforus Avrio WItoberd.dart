void main() {

  String nama = "Christoforus Avrio Witoberd";
  String nim = "244107060073";

  double nilaiUnikNIM = 73.0;

  List<double> hargaBarang = [
    25000.5,
    50000.0,
    75000.25,
    30000.75,
    20000.0
  ];

  hargaBarang.add(nilaiUnikNIM);

  double totalAwal = hitungTotal(hargaBarang);

  String? pesanDiskon;

  double diskon = 0;

  if (totalAwal > 200000) {
    diskon = totalAwal * 0.10;
    pesanDiskon = "Diskon 10%";
  } 
  else if (totalAwal >= 100000 && totalAwal <= 200000) {
    diskon = totalAwal * 0.05;
    pesanDiskon = "Diskon 5%";
  } 
  else {
    diskon = 0;
    pesanDiskon = "Tidak ada diskon";
  }

  double totalAkhir = totalAwal - diskon;

  print("Nama : $nama");
  print("NIM : $nim");
  print("Total Awal : Rp $totalAwal");
  print("Besar Diskon : Rp $diskon");
  print("Keterangan Diskon : ${pesanDiskon!}");
  print("Total Akhir : Rp $totalAkhir");
}


double hitungTotal(List<double> daftarHarga) {

  double total = 0;

  for (double harga in daftarHarga) {
    total += harga;
  }

  return total;
}