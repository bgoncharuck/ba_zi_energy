import '../exts.dart';
import '../animals.dart';

// 4 groups.
// Within the group, there is harmony.
// In a friendly group, one passion, two sympathies.

// Further, for each sign among the two other groups, there is tension and hostility.
// There are 4 special signs, for which the hostility is their own sign.

Set<Animal> get shamans => {Animal.Pig, Animal.Rabbit, Animal.Goat};
Set<Animal> get warriors => {Animal.Dragon, Animal.Monkey, Animal.Rat};
Set<Animal> get traders => {Animal.Snake, Animal.Rooster, Animal.Ox};
Set<Animal> get creators => {Animal.Horse, Animal.Dog, Animal.Tiger};

const sixHarmonies = <Animal, Animal>{
  Animal.Tiger: Animal.Pig,
  Animal.Rabbit: Animal.Dog,
  Animal.Dragon: Animal.Rooster,
  Animal.Snake: Animal.Monkey,
  Animal.Horse: Animal.Goat,
  Animal.Goat: Animal.Horse,
  Animal.Monkey: Animal.Snake,
  Animal.Rooster: Animal.Dragon,
  Animal.Dog: Animal.Rabbit,
  Animal.Pig: Animal.Tiger,
  Animal.Rat: Animal.Ox,
  Animal.Ox: Animal.Rat
};

const selfPunishment = <Animal, Set<Animal>>{
  Animal.Dragon: {Animal.Dragon},
  Animal.Horse: {Animal.Horse},
  Animal.Rooster: {Animal.Rooster},
  Animal.Pig: {Animal.Pig},
};

const ungratefulPunishment = <Animal, Set<Animal>>{
  Animal.Tiger: {Animal.Monkey, Animal.Snake},
  Animal.Snake: {Animal.Tiger},
  Animal.Monkey: {Animal.Tiger},
};

const bullyingPunishment = <Animal, Set<Animal>>{
  Animal.Goat: {Animal.Dog, Animal.Ox},
  Animal.Dog: {Animal.Ox, Animal.Goat},
  Animal.Ox: {Animal.Goat, Animal.Dog},
};

const taintPunishment = <Animal, Set<Animal>>{
  Animal.Rat: {Animal.Rabbit},
  Animal.Rabbit: {Animal.Rat},
};

enum AnimalPairType {
  passion,
  harmony,
  sympathy,
  neutral,
  tension,
  selfPunishment,
  ungratefulPunishment,
  bullyingPunishment,
  taintPunishment,
}

Set<Animal> teammatesOf(Animal animal) {
  return {
    if (shamans.contains(animal)) ...(shamans..remove(animal)),
    if (warriors.contains(animal)) ...(warriors..remove(animal)),
    if (traders.contains(animal)) ...(traders..remove(animal)),
    if (creators.contains(animal)) ...(creators..remove(animal)),
  };
}

Set<Animal> teammatesOfLover(Animal animal) {
  return teammatesOf(sixHarmonies[animal]!)..remove(animal);
}

bool isPunishment(AnimalPairType pairType) {
  return pairType == AnimalPairType.selfPunishment ||
      pairType == AnimalPairType.ungratefulPunishment ||
      pairType == AnimalPairType.bullyingPunishment ||
      pairType == AnimalPairType.taintPunishment;
}

Animal rivalOf(Animal animal) => Animal.values.forward(animal, 6);

Set<Animal> hostileTo(Animal animal) {
  return {
    ...selfPunishment[animal] ?? {},
    ...ungratefulPunishment[animal] ?? {},
    ...bullyingPunishment[animal] ?? {},
    ...taintPunishment[animal] ?? {},
  };
}

AnimalPairType pairTypeOf(Animal first, Animal second) {
  if (first == second && selfPunishment.keys.contains(first)) {
    return AnimalPairType.selfPunishment;
  }
  if (ungratefulPunishment[first]?.contains(second) ?? false) {
    return AnimalPairType.ungratefulPunishment;
  }
  if (bullyingPunishment[first]?.contains(second) ?? false) {
    return AnimalPairType.bullyingPunishment;
  }
  if (taintPunishment[first]?.contains(second) ?? false) {
    return AnimalPairType.taintPunishment;
  }
  if (rivalOf(first) == second) {
    return AnimalPairType.tension;
  }
  if (sixHarmonies[first] == second) {
    return AnimalPairType.passion;
  }
  if (teammatesOf(first).contains(second)) {
    return AnimalPairType.harmony;
  }
  if (teammatesOfLover(first).contains(second)) {
    return AnimalPairType.sympathy;
  }
  return AnimalPairType.neutral;
}
