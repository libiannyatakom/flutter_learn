class PersegiPanjang {
  double? _panjang; // underscore is private
  double? _lebar; // underscore is private

  set panjang(double value) {
    // changed always has positive value
    if(value < 0) {
      value *= -1;
    }
    _panjang = value;
  }

  double get panjang {
    return _panjang!;
  }

  double get lebar => _lebar!;

  set lebar(double value) {
    if(value < 0) {
      value *= -1;
    }
    _lebar = value;
  }

  double get luas => _panjang! * _lebar!;
}