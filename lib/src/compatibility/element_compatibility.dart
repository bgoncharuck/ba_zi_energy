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
