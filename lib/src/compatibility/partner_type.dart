import '../animals.dart';
import '../elements.dart';
import '../energies.dart';

enum PartnerType {
  PerfectHusband,
  MasculineWife,
  PerfectWife,
  FeminineHusband,
  MaleHealthKiller,
  FemaleHealthKiller,
  Polyamorous,
  Exploiter,
  Provider,
}

PartnerType partnerType(AnimalSynergy synergy, Sex sex) {
  if (sex == Sex.Yang) {
  } else {}
}

const perfectHusband = <AnimalSynergy>[
  AnimalSynergy(animal: Animal.Tiger, flavor: Energy.MetalYang),
  AnimalSynergy(animal: Animal.Rabbit, flavor: Energy.MetalYin),
  AnimalSynergy(animal: Animal.Dragon, flavor: Energy.WoodYang),
  AnimalSynergy(animal: Animal.Snake, flavor: Energy.FireYin),
  AnimalSynergy(animal: Animal.Snake, flavor: Energy.WaterYin),
  AnimalSynergy(animal: Animal.Horse, flavor: Energy.WaterYang),
  AnimalSynergy(animal: Animal.Goat, flavor: Energy.WoodYin),
  AnimalSynergy(animal: Animal.Monkey, flavor: Energy.FireYang),
  AnimalSynergy(animal: Animal.Rooster, flavor: Energy.FireYin),
  AnimalSynergy(animal: Animal.Dog, flavor: Energy.WoodYang),
  AnimalSynergy(animal: Animal.Pig, flavor: Energy.EarthYin),
  AnimalSynergy(animal: Animal.Pig, flavor: Energy.WaterYin),
  AnimalSynergy(animal: Animal.Rat, flavor: Energy.EarthYang),
  AnimalSynergy(animal: Animal.Ox, flavor: Energy.WoodYin),
];

const masculineWife = <AnimalSynergy>[
  AnimalSynergy(animal: Animal.Tiger, flavor: Energy.MetalYang),
  AnimalSynergy(animal: Animal.Rabbit, flavor: Energy.MetalYin),
  AnimalSynergy(animal: Animal.Dragon, flavor: Energy.WoodYang),
  AnimalSynergy(animal: Animal.Snake, flavor: Energy.WaterYin),
  AnimalSynergy(animal: Animal.Horse, flavor: Energy.WaterYang),
  AnimalSynergy(animal: Animal.Goat, flavor: Energy.WoodYin),
  AnimalSynergy(animal: Animal.Monkey, flavor: Energy.FireYang),
  AnimalSynergy(animal: Animal.Rooster, flavor: Energy.FireYin),
  AnimalSynergy(animal: Animal.Dog, flavor: Energy.WoodYang),
  AnimalSynergy(animal: Animal.Pig, flavor: Energy.EarthYin),
  AnimalSynergy(animal: Animal.Rat, flavor: Energy.EarthYang),
  AnimalSynergy(animal: Animal.Ox, flavor: Energy.WoodYin),
];

const perfectWife = <AnimalSynergy>[
  AnimalSynergy(animal: Animal.Tiger, flavor: Energy.EarthYang),
  AnimalSynergy(animal: Animal.Rabbit, flavor: Energy.EarthYin),
  AnimalSynergy(animal: Animal.Dragon, flavor: Energy.WaterYang),
  AnimalSynergy(animal: Animal.Snake, flavor: Energy.MetalYin),
  AnimalSynergy(animal: Animal.Horse, flavor: Energy.FireYang),
  AnimalSynergy(animal: Animal.Horse, flavor: Energy.MetalYang),
  AnimalSynergy(animal: Animal.Goat, flavor: Energy.WaterYin),
  AnimalSynergy(animal: Animal.Monkey, flavor: Energy.WoodYang),
  AnimalSynergy(animal: Animal.Rooster, flavor: Energy.WoodYin),
  AnimalSynergy(animal: Animal.Dog, flavor: Energy.WaterYang),
  AnimalSynergy(animal: Animal.Pig, flavor: Energy.FireYin),
  AnimalSynergy(animal: Animal.Rat, flavor: Energy.FireYang),
  AnimalSynergy(animal: Animal.Rat, flavor: Energy.WaterYang),
  AnimalSynergy(animal: Animal.Ox, flavor: Energy.WaterYin)
];

const feminineHusband = <AnimalSynergy>[
  AnimalSynergy(animal: Animal.Tiger, flavor: Energy.EarthYang),
  AnimalSynergy(animal: Animal.Rabbit, flavor: Energy.EarthYin),
  AnimalSynergy(animal: Animal.Dragon, flavor: Energy.WaterYang),
  AnimalSynergy(animal: Animal.Snake, flavor: Energy.MetalYin),
  AnimalSynergy(animal: Animal.Horse, flavor: Energy.MetalYang),
  AnimalSynergy(animal: Animal.Goat, flavor: Energy.WaterYin),
  AnimalSynergy(animal: Animal.Monkey, flavor: Energy.WoodYang),
  AnimalSynergy(animal: Animal.Rooster, flavor: Energy.WoodYin),
  AnimalSynergy(animal: Animal.Dog, flavor: Energy.WaterYang),
  AnimalSynergy(animal: Animal.Pig, flavor: Energy.FireYin),
  AnimalSynergy(animal: Animal.Rat, flavor: Energy.FireYang),
  AnimalSynergy(animal: Animal.Ox, flavor: Energy.WaterYin)
];

const maleHealthKiller = <AnimalSynergy>[
  AnimalSynergy(animal: Animal.Horse, flavor: Energy.FireYang),
  AnimalSynergy(animal: Animal.Rat, flavor: Energy.WaterYang),
];

const femaleHealthKiller = <AnimalSynergy>[
  AnimalSynergy(animal: Animal.Snake, flavor: Energy.FireYin),
  AnimalSynergy(animal: Animal.Pig, flavor: Energy.WaterYin),
];

const polygamy = <AnimalSynergy>[
  AnimalSynergy(animal: Animal.Tiger, flavor: Energy.WoodYang),
  AnimalSynergy(animal: Animal.Rabbit, flavor: Energy.WoodYin),
  AnimalSynergy(animal: Animal.Dragon, flavor: Energy.EarthYang),
  AnimalSynergy(animal: Animal.Goat, flavor: Energy.EarthYin),
  AnimalSynergy(animal: Animal.Monkey, flavor: Energy.MetalYang),
  AnimalSynergy(animal: Animal.Rooster, flavor: Energy.MetalYin),
  AnimalSynergy(animal: Animal.Dog, flavor: Energy.EarthYang),
  AnimalSynergy(animal: Animal.Ox, flavor: Energy.EarthYin),
];

const exploiter = <AnimalSynergy>[
  AnimalSynergy(animal: Animal.Tiger, flavor: Energy.FireYang),
  AnimalSynergy(animal: Animal.Rabbit, flavor: Energy.FireYin),
  AnimalSynergy(animal: Animal.Dragon, flavor: Energy.MetalYang),
  AnimalSynergy(animal: Animal.Snake, flavor: Energy.WoodYin),
  AnimalSynergy(animal: Animal.Horse, flavor: Energy.WoodYang),
  AnimalSynergy(animal: Animal.Goat, flavor: Energy.MetalYin),
  AnimalSynergy(animal: Animal.Monkey, flavor: Energy.WaterYang),
  AnimalSynergy(animal: Animal.Rooster, flavor: Energy.WaterYin),
  AnimalSynergy(animal: Animal.Dog, flavor: Energy.MetalYang),
  AnimalSynergy(animal: Animal.Pig, flavor: Energy.MetalYin),
  AnimalSynergy(animal: Animal.Rat, flavor: Energy.MetalYang),
  AnimalSynergy(animal: Animal.Ox, flavor: Energy.MetalYin),
];

const provider = <AnimalSynergy>[
  AnimalSynergy(animal: Animal.Tiger, flavor: Energy.WaterYang),
  AnimalSynergy(animal: Animal.Rabbit, flavor: Energy.WaterYin),
  AnimalSynergy(animal: Animal.Dragon, flavor: Energy.FireYang),
  AnimalSynergy(animal: Animal.Snake, flavor: Energy.EarthYin),
  AnimalSynergy(animal: Animal.Horse, flavor: Energy.EarthYang),
  AnimalSynergy(animal: Animal.Goat, flavor: Energy.FireYin),
  AnimalSynergy(animal: Animal.Monkey, flavor: Energy.EarthYang),
  AnimalSynergy(animal: Animal.Rooster, flavor: Energy.EarthYin),
  AnimalSynergy(animal: Animal.Dog, flavor: Energy.FireYang),
  AnimalSynergy(animal: Animal.Pig, flavor: Energy.WoodYin),
  AnimalSynergy(animal: Animal.Rat, flavor: Energy.WoodYang),
  AnimalSynergy(animal: Animal.Ox, flavor: Energy.FireYin),
];
