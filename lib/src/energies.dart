import 'elements.dart';

enum Energy {
  WoodYang(Element.Wood, Sex.Yang),
  WoodYin(Element.Wood, Sex.Yin),
  FireYang(Element.Fire, Sex.Yang),
  FireYin(Element.Fire, Sex.Yin),
  EarthYang(Element.Earth, Sex.Yang),
  EarthYin(Element.Earth, Sex.Yin),
  MetalYang(Element.Metal, Sex.Yang),
  MetalYin(Element.Metal, Sex.Yin),
  WaterYang(Element.Water, Sex.Yang),
  WaterYin(Element.Water, Sex.Yin);

  final Element element;
  final Sex sex;

  const Energy(this.element, this.sex);
  factory Energy.fromElement(Element element, Sex sex) {
    return values.firstWhere((e) => e.sex == sex && e.element == element);
  }

  @override
  String toString() {
    return '${sex.western} $element';
  }

  String get toCache {
    return 'Energy.$name';
  }
}

const Map<Energy, Energy> nextEnergy = {
  Energy.FireYang: Energy.FireYin,
  Energy.FireYin: Energy.EarthYang,
  Energy.EarthYang: Energy.EarthYin,
  Energy.EarthYin: Energy.MetalYang,
  Energy.MetalYang: Energy.MetalYin,
  //
  Energy.MetalYin: Energy.WaterYang,
  Energy.WaterYang: Energy.WaterYin,
  Energy.WaterYin: Energy.WoodYang,
  Energy.WoodYang: Energy.WoodYin,
  Energy.WoodYin: Energy.FireYang,
};

const Map<Energy, Energy> previousEnergy = {
  Energy.FireYang: Energy.WoodYin,
  Energy.FireYin: Energy.FireYang,
  Energy.EarthYang: Energy.FireYin,
  Energy.EarthYin: Energy.EarthYang,
  Energy.MetalYang: Energy.EarthYin,
  //
  Energy.MetalYin: Energy.MetalYang,
  Energy.WaterYang: Energy.MetalYin,
  Energy.WaterYin: Energy.WaterYang,
  Energy.WoodYang: Energy.WaterYin,
  Energy.WoodYin: Energy.WoodYang,
};

class Synergy {
  const Synergy(this.first, this.second);
  final Energy first;
  final Energy second;

  @override
  String toString() {
    return 'Synergy of $first and $second';
  }
}
