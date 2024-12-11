import 'package:ba_zi_energy/ba_zi_energy.dart';

enum ElementPair {
  fusion,
  neutral,
  conflict,
}

ElementPair elementFusionTry(Energy first, Energy second) {
  if (fusion[first] == second) {
    return ElementPair.fusion;
  }
  if (conflict[first] == second) {
    return ElementPair.conflict;
  }
  return ElementPair.neutral;
}

const fusion = <Energy, Energy>{
  Energy.WaterYang: Energy.FireYin,
  Energy.FireYin: Energy.WaterYang,
  Energy.EarthYang: Energy.WaterYin,
  Energy.WaterYin: Energy.EarthYang,
  Energy.WoodYang: Energy.EarthYin,
  Energy.EarthYin: Energy.WoodYang,
  Energy.MetalYang: Energy.WoodYin,
  Energy.WoodYin: Energy.MetalYang,
  Energy.FireYang: Energy.MetalYin,
  Energy.MetalYin: Energy.FireYang,
};

const fusionResult = <Energy, Element>{
  Energy.WaterYang: Element.Wood,
  Energy.FireYin: Element.Wood,
  Energy.EarthYang: Element.Fire,
  Energy.WaterYin: Element.Fire,
  Energy.WoodYang: Element.Earth,
  Energy.EarthYin: Element.Earth,
  Energy.MetalYang: Element.Metal,
  Energy.WoodYin: Element.Metal,
  Energy.FireYang: Element.Water,
  Energy.MetalYin: Element.Water,
};

const conflict = <Energy, Energy>{
  Energy.MetalYang: Energy.WoodYang,
  Energy.WoodYang: Energy.MetalYang,
  Energy.MetalYin: Energy.WoodYin,
  Energy.WoodYin: Energy.MetalYin,
  Energy.FireYang: Energy.WaterYang,
  Energy.WaterYang: Energy.FireYang,
  Energy.WaterYin: Energy.FireYin,
  Energy.FireYin: Energy.WaterYin,
  Energy.EarthYin: Energy.EarthYin,
  Energy.EarthYang: Energy.EarthYang,
};
