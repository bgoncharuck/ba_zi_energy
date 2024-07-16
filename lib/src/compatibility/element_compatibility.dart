import 'package:ba_zi_energy/ba_zi_energy.dart';

enum ElementPair {
  fusion,
  neutral,
  conflict,
}

ElementPair pairTypeOf(Energy first, Energy second) {
  if (fusion[first] == second) {
    return ElementPair.fusion;
  }
  if (conflict[first] == second) {
    return ElementPair.conflict;
  }
  return ElementPair.neutral;
}

const fusion = <Energy, Energy>{
  Energy.WaterYang: Energy.EarthYin,
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
