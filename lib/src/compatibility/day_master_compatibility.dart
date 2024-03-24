import '../animals.dart';
import '../elements.dart';
import '../energies.dart';

const notSorted = <AnimalSynergy>[
  //
  AnimalSynergy(animal: Animal.Rabbit, flavor: Energy.WoodYin),
  AnimalSynergy(animal: Animal.Rabbit, flavor: Energy.FireYin),
  AnimalSynergy(animal: Animal.Rabbit, flavor: Energy.EarthYin),
  AnimalSynergy(animal: Animal.Rabbit, flavor: Energy.MetalYin),
  AnimalSynergy(animal: Animal.Rabbit, flavor: Energy.WaterYin),
  AnimalSynergy(animal: Animal.Dragon, flavor: Energy.WoodYang),
  AnimalSynergy(animal: Animal.Dragon, flavor: Energy.FireYang),
  AnimalSynergy(animal: Animal.Dragon, flavor: Energy.EarthYang),
  AnimalSynergy(animal: Animal.Dragon, flavor: Energy.MetalYang),
  AnimalSynergy(animal: Animal.Dragon, flavor: Energy.WaterYang),
  AnimalSynergy(animal: Animal.Snake, flavor: Energy.WoodYin),
  AnimalSynergy(animal: Animal.Snake, flavor: Energy.FireYin),
  AnimalSynergy(animal: Animal.Snake, flavor: Energy.EarthYin),
  AnimalSynergy(animal: Animal.Snake, flavor: Energy.MetalYin),
  AnimalSynergy(animal: Animal.Snake, flavor: Energy.WaterYin),
  AnimalSynergy(animal: Animal.Horse, flavor: Energy.WoodYang),
  AnimalSynergy(animal: Animal.Horse, flavor: Energy.FireYang),
  AnimalSynergy(animal: Animal.Horse, flavor: Energy.EarthYang),
  AnimalSynergy(animal: Animal.Horse, flavor: Energy.MetalYang),
  AnimalSynergy(animal: Animal.Horse, flavor: Energy.WaterYang),
  AnimalSynergy(animal: Animal.Goat, flavor: Energy.WoodYin),
  AnimalSynergy(animal: Animal.Goat, flavor: Energy.FireYin),
  AnimalSynergy(animal: Animal.Goat, flavor: Energy.EarthYin),
  AnimalSynergy(animal: Animal.Goat, flavor: Energy.MetalYin),
  AnimalSynergy(animal: Animal.Goat, flavor: Energy.WaterYin),
  AnimalSynergy(animal: Animal.Monkey, flavor: Energy.WoodYang),
  AnimalSynergy(animal: Animal.Monkey, flavor: Energy.FireYang),
  AnimalSynergy(animal: Animal.Monkey, flavor: Energy.EarthYang),
  AnimalSynergy(animal: Animal.Monkey, flavor: Energy.MetalYang),
  AnimalSynergy(animal: Animal.Monkey, flavor: Energy.WaterYang),
  AnimalSynergy(animal: Animal.Rooster, flavor: Energy.WoodYin),
  AnimalSynergy(animal: Animal.Rooster, flavor: Energy.FireYin),
  AnimalSynergy(animal: Animal.Rooster, flavor: Energy.EarthYin),
  AnimalSynergy(animal: Animal.Rooster, flavor: Energy.MetalYin),
  AnimalSynergy(animal: Animal.Rooster, flavor: Energy.WaterYin),
  AnimalSynergy(animal: Animal.Dog, flavor: Energy.WoodYang),
  AnimalSynergy(animal: Animal.Dog, flavor: Energy.FireYang),
  AnimalSynergy(animal: Animal.Dog, flavor: Energy.EarthYang),
  AnimalSynergy(animal: Animal.Dog, flavor: Energy.MetalYang),
  AnimalSynergy(animal: Animal.Dog, flavor: Energy.WaterYang),
  AnimalSynergy(animal: Animal.Pig, flavor: Energy.WoodYin),
  AnimalSynergy(animal: Animal.Pig, flavor: Energy.FireYin),
  AnimalSynergy(animal: Animal.Pig, flavor: Energy.EarthYin),
  AnimalSynergy(animal: Animal.Pig, flavor: Energy.MetalYin),
  AnimalSynergy(animal: Animal.Pig, flavor: Energy.WaterYin),
  AnimalSynergy(animal: Animal.Rat, flavor: Energy.WoodYang),
  AnimalSynergy(animal: Animal.Rat, flavor: Energy.FireYang),
  AnimalSynergy(animal: Animal.Rat, flavor: Energy.EarthYang),
  AnimalSynergy(animal: Animal.Rat, flavor: Energy.MetalYang),
  AnimalSynergy(animal: Animal.Rat, flavor: Energy.WaterYang),
  AnimalSynergy(animal: Animal.Ox, flavor: Energy.WoodYin),
  AnimalSynergy(animal: Animal.Ox, flavor: Energy.FireYin),
  AnimalSynergy(animal: Animal.Ox, flavor: Energy.EarthYin),
  AnimalSynergy(animal: Animal.Ox, flavor: Energy.MetalYin),
  AnimalSynergy(animal: Animal.Ox, flavor: Energy.WaterYin)
];

const perfectHusband = <AnimalSynergy>[
  AnimalSynergy(animal: Animal.Tiger, flavor: Energy.MetalYang),
];

const abuserWife = <AnimalSynergy>[
  AnimalSynergy(animal: Animal.Tiger, flavor: Energy.MetalYang),
];

const perfectWife = <AnimalSynergy>[
  AnimalSynergy(animal: Animal.Tiger, flavor: Energy.EarthYang),
];

const abuserHusband = <AnimalSynergy>[
  AnimalSynergy(animal: Animal.Tiger, flavor: Energy.EarthYang),
];

const maleHealthKiller = <AnimalSynergy>[];

const femaleHealthKiller = <AnimalSynergy>[];

const traitor = <AnimalSynergy>[
  AnimalSynergy(animal: Animal.Tiger, flavor: Energy.WoodYang),
];

const resourceAbsorbing = <AnimalSynergy>[
  AnimalSynergy(animal: Animal.Tiger, flavor: Energy.FireYang),
];

const resourceAbsorbed = <AnimalSynergy>[
  AnimalSynergy(animal: Animal.Tiger, flavor: Energy.WaterYang),
];
