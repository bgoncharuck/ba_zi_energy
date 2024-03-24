import '../animals.dart';
import '../elements.dart';
import '../energies.dart';

/// dummy non-existent unicorns for algorithm purpose
const _perfectWife =
    AnimalSynergy(animal: Animal.Horse, flavor: Energy.EarthYin);
const _perfectHusband =
    AnimalSynergy(animal: Animal.Dog, flavor: Energy.FireYin);

List<AnimalSynergy> filteredWifeFor(Element day) {
  return wifeFor(day).where((a) => !isBadWife(a)).toList();
}

List<AnimalSynergy> wifeFor(Element day) {
  switch (day) {
    case Element.Wood:
      return [
        AnimalSynergy(animal: Animal.Rat, flavor: Energy.FireYang),
        AnimalSynergy(animal: Animal.Pig, flavor: Energy.FireYin),
        AnimalSynergy(animal: Animal.Dragon, flavor: Energy.WaterYang),
        AnimalSynergy(animal: Animal.Ox, flavor: Energy.WaterYin),
        AnimalSynergy(animal: Animal.Dog, flavor: Energy.WaterYang),
        AnimalSynergy(animal: Animal.Goat, flavor: Energy.WaterYin),
      ];
    case Element.Fire:
      return [
        AnimalSynergy(animal: Animal.Monkey, flavor: Energy.WoodYang),
        AnimalSynergy(animal: Animal.Rooster, flavor: Energy.WoodYin),
        AnimalSynergy(animal: Animal.Tiger, flavor: Energy.EarthYang),
        AnimalSynergy(animal: Animal.Rabbit, flavor: Energy.EarthYin),
      ];
    case Element.Earth:
      return [
        AnimalSynergy(animal: Animal.Rat, flavor: Energy.FireYang),
        AnimalSynergy(animal: Animal.Pig, flavor: Energy.FireYin),
        AnimalSynergy(animal: Animal.Horse, flavor: Energy.MetalYang),
        AnimalSynergy(animal: Animal.Snake, flavor: Energy.MetalYin),
      ];
    case Element.Metal:
      return [
        AnimalSynergy(animal: Animal.Tiger, flavor: Energy.EarthYang),
        AnimalSynergy(animal: Animal.Rabbit, flavor: Energy.EarthYin),
        AnimalSynergy(animal: Animal.Dragon, flavor: Energy.WaterYang),
        AnimalSynergy(animal: Animal.Ox, flavor: Energy.WaterYin),
        AnimalSynergy(animal: Animal.Dog, flavor: Energy.WaterYang),
        AnimalSynergy(animal: Animal.Goat, flavor: Energy.WaterYin),
      ];
    case Element.Water:
      return [
        AnimalSynergy(animal: Animal.Monkey, flavor: Energy.WoodYang),
        AnimalSynergy(animal: Animal.Rooster, flavor: Energy.WoodYin),
        AnimalSynergy(animal: Animal.Horse, flavor: Energy.MetalYang),
        AnimalSynergy(animal: Animal.Snake, flavor: Energy.MetalYin),
      ];
  }
}

List<AnimalSynergy> filteredHusbandFor(Element day) {
  return husbandFor(day).where((a) => !isBadHusband(a)).toList();
}

List<AnimalSynergy> husbandFor(Element day) {
  switch (day) {
    case Element.Wood:
      return [
        AnimalSynergy(animal: Animal.Monkey, flavor: Energy.FireYang),
        AnimalSynergy(animal: Animal.Rooster, flavor: Energy.FireYin),
        AnimalSynergy(animal: Animal.Horse, flavor: Energy.WaterYang),
        AnimalSynergy(animal: Animal.Snake, flavor: Energy.WaterYin),
      ];
    case Element.Fire:
      return [
        AnimalSynergy(animal: Animal.Dragon, flavor: Energy.WoodYang),
        AnimalSynergy(animal: Animal.Ox, flavor: Energy.WoodYin),
        AnimalSynergy(animal: Animal.Dog, flavor: Energy.WoodYang),
        AnimalSynergy(animal: Animal.Goat, flavor: Energy.WoodYin),
        AnimalSynergy(animal: Animal.Rat, flavor: Energy.EarthYang),
        AnimalSynergy(animal: Animal.Pig, flavor: Energy.EarthYin),
      ];
    case Element.Earth:
      return [
        AnimalSynergy(animal: Animal.Monkey, flavor: Energy.FireYang),
        AnimalSynergy(animal: Animal.Rooster, flavor: Energy.FireYin),
        AnimalSynergy(animal: Animal.Tiger, flavor: Energy.MetalYang),
        AnimalSynergy(animal: Animal.Rabbit, flavor: Energy.MetalYin),
      ];
    case Element.Metal:
      return [
        AnimalSynergy(animal: Animal.Rat, flavor: Energy.EarthYang),
        AnimalSynergy(animal: Animal.Pig, flavor: Energy.EarthYin),
        AnimalSynergy(animal: Animal.Horse, flavor: Energy.WaterYang),
        AnimalSynergy(animal: Animal.Snake, flavor: Energy.WaterYin),
      ];
    case Element.Water:
      return [
        AnimalSynergy(animal: Animal.Dragon, flavor: Energy.WoodYang),
        AnimalSynergy(animal: Animal.Ox, flavor: Energy.WoodYin),
        AnimalSynergy(animal: Animal.Dog, flavor: Energy.WoodYang),
        AnimalSynergy(animal: Animal.Goat, flavor: Energy.WoodYin),
        AnimalSynergy(animal: Animal.Tiger, flavor: Energy.MetalYang),
        AnimalSynergy(animal: Animal.Rabbit, flavor: Energy.MetalYin),
      ];
  }
}

bool isBadWife(AnimalSynergy day) {
  final contained = [
    ...femaleSpouseHealthKiller,
    ...bothGendersTraitor,
    ...bothGendersAbuser,

    /// not necessarily the bad wives
    ...femaleWealthAbsorbing,
    ...femaleWealthAbsorbed,
  ].firstWhere(
    (a) => a.animal == day.animal && a.flavor == day.flavor,
    orElse: () => _perfectWife,
  );
  if (contained.animal != _perfectWife.animal &&
      contained.flavor != _perfectWife.flavor) {
    return true;
  }
  return false;
}

bool isBadHusband(AnimalSynergy day) {
  final contained = [
    ...maleSpouseHealthKiller,
    ...bothGendersTraitor,
    ...bothGendersAbuser,
  ].firstWhere(
    (a) => a.animal == day.animal && a.flavor == day.flavor,
    orElse: () => _perfectHusband,
  );
  if (contained.animal != _perfectHusband.animal &&
      contained.flavor != _perfectHusband.flavor) {
    return true;
  }
  return false;
}

/// checks chosen set of "killers"
bool isJustBad(List<AnimalSynergy> sEt, AnimalSynergy person) {
  final contained = sEt.firstWhere(
    (a) => a.animal == person.animal && a.flavor == person.flavor,
    orElse: () => _perfectWife,
  );
  if (contained.animal != _perfectWife.animal &&
      contained.flavor != _perfectWife.flavor) {
    return true;
  }
  return false;
}

const maleSpouseHealthKiller = <AnimalSynergy>[
  AnimalSynergy(animal: Animal.Rat, flavor: Energy.WaterYang),
  AnimalSynergy(animal: Animal.Horse, flavor: Energy.FireYang),
];

const femaleSpouseHealthKiller = <AnimalSynergy>[
  AnimalSynergy(animal: Animal.Snake, flavor: Energy.FireYin),
  AnimalSynergy(animal: Animal.Pig, flavor: Energy.WaterYin),
];

const bothGendersTraitor = <AnimalSynergy>[
  AnimalSynergy(animal: Animal.Tiger, flavor: Energy.WoodYang),
  AnimalSynergy(animal: Animal.Rabbit, flavor: Energy.WoodYin),
  AnimalSynergy(animal: Animal.Dragon, flavor: Energy.EarthYang),
  AnimalSynergy(animal: Animal.Dog, flavor: Energy.EarthYang),
  AnimalSynergy(animal: Animal.Goat, flavor: Energy.EarthYin),
  AnimalSynergy(animal: Animal.Ox, flavor: Energy.EarthYin),
  AnimalSynergy(animal: Animal.Monkey, flavor: Energy.MetalYang),
  AnimalSynergy(animal: Animal.Rooster, flavor: Energy.MetalYin),
];

const bothGendersAbuser = <AnimalSynergy>[
  AnimalSynergy(animal: Animal.Monkey, flavor: Energy.WoodYang),
  AnimalSynergy(animal: Animal.Dog, flavor: Energy.WoodYang),
  AnimalSynergy(animal: Animal.Rooster, flavor: Energy.WoodYin),
  AnimalSynergy(animal: Animal.Monkey, flavor: Energy.FireYang),
  AnimalSynergy(animal: Animal.Rooster, flavor: Energy.FireYin),
  AnimalSynergy(animal: Animal.Tiger, flavor: Energy.EarthYang),
  AnimalSynergy(animal: Animal.Tiger, flavor: Energy.MetalYang),
  AnimalSynergy(animal: Animal.Rabbit, flavor: Energy.MetalYin),
  AnimalSynergy(animal: Animal.Dog, flavor: Energy.WaterYang),
  AnimalSynergy(animal: Animal.Goat, flavor: Energy.WaterYin),
];

const resourceAbsorbing = <AnimalSynergy>[
  AnimalSynergy(animal: Animal.Horse, flavor: Energy.WoodYang),
  AnimalSynergy(animal: Animal.Snake, flavor: Energy.WoodYin),
  AnimalSynergy(animal: Animal.Rat, flavor: Energy.MetalYang),
  AnimalSynergy(animal: Animal.Pig, flavor: Energy.MetalYin),
];

const resourceAbsorbed = <AnimalSynergy>[
  AnimalSynergy(animal: Animal.Dragon, flavor: Energy.FireYang),
  AnimalSynergy(animal: Animal.Dog, flavor: Energy.FireYang),
  AnimalSynergy(animal: Animal.Goat, flavor: Energy.FireYin),
  AnimalSynergy(animal: Animal.Ox, flavor: Energy.FireYin),
  AnimalSynergy(animal: Animal.Monkey, flavor: Energy.EarthYang),
  AnimalSynergy(animal: Animal.Rooster, flavor: Energy.EarthYin),
  AnimalSynergy(animal: Animal.Tiger, flavor: Energy.WaterYang),
  AnimalSynergy(animal: Animal.Rabbit, flavor: Energy.WaterYin),
];
