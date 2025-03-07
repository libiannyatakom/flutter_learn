void main(List<String> arguments) {
  PersegiPanjang? box1, box2;
  double luasBox1, luasBox2;

  box1 = PersegiPanjang();
  box1.panjang = 4;
  box1.lebar = 4;
  luasBox1 = box1.getLuas();

  box2 = PersegiPanjang();
  box2.panjang = 5;
  box2.lebar = 4;
  luasBox2 = box2.getLuas();

  print(luasBox1 + luasBox2);
}

class PersegiPanjang {
  double? panjang;
  double? lebar;

  double getLuas() {
    return panjang! * lebar!;
  }
}