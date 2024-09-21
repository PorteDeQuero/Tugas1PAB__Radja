class Toko{
  String namaProduk;
  double harga;
  int jumlah;
  double diskon;

  Toko(this.namaProduk, this.harga, this.jumlah, this.diskon);
  double hitungTotalHargaTanpaDiskon(){
    return harga * jumlah;
  }
  double hitungTotalHargaSetelahDiskon(){
    double hargaTanpaDiskon = hitungTotalHargaTanpaDiskon();
    double besarPotongan = hargaTanpaDiskon * (diskon / 100);
    return hargaTanpaDiskon - besarPotongan;
  }
  void tampilkanInformasiProduk(){
    print('Nama Produk                     :$namaProduk');
    print('Harga Satuan                    :Rp$harga');
    print('Jumlah                          :$jumlah Buah');
    print('Diskon                          :$diskon%');
    print('');
    print('Total Harga Tanpa Diskon        :Rp${hitungTotalHargaTanpaDiskon()}');
    print('Total Harga Setelah Diskon      :Rp${hitungTotalHargaSetelahDiskon()}');
  }
}
  void main(){
    Toko kamera = Toko('Kamera', 2000000, 3, 10);
    kamera.tampilkanInformasiProduk();
  }
