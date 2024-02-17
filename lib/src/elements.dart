import 'exts.dart';

enum Element {
  Wood,
  Fire,
  Earth,
  Metal,
  Water;

  Element get fortifiedBy => Element.values.backward(this, 1);

  Element get fortifies => Element.values.forward(this, 1);

  Element get destroys => Element.values.forward(this, 2);

  Element get destroyedBy => Element.values.backward(this, 2);

  @override
  String toString() {
    return name;
  }
}

enum Sex {
  Yang,
  Yin;

  String get western => this == Sex.Yang ? 'Male' : 'Female';
  Sex get opposite => this == Sex.Yang ? Sex.Yin : Sex.Yang;
}
