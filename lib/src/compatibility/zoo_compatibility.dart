import '../exts.dart';
import '../animals.dart';

enum AnimalPairType {
  lover,
  friend,
  friendOfAFriend,
  neutral,
  rapePunishment,
  ungratefulPunishment,
  selfPunishment,
  bullyingPunishment,
  enemy,
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
  if (rapePunishment[first]?.contains(second) ?? false) {
    return AnimalPairType.rapePunishment;
  }
  if (Animal.values.forward(first, 6) == second) {
    return AnimalPairType.enemy;
  }
  if (sixHarmonies[first] == second) {
    return AnimalPairType.lover;
  }
  if (harmonyFor(first).contains(second)) {
    return AnimalPairType.friend;
  }
  if (harmonyForLover(first).contains(second)) {
    return AnimalPairType.friendOfAFriend;
  }
  return AnimalPairType.neutral;
}

Set<Animal> harmonyFor(Animal animal) {
  return {
    if (clergy.contains(animal)) ...(clergy..remove(animal)),
    if (warriors.contains(animal)) ...(warriors..remove(animal)),
    if (traders.contains(animal)) ...(traders..remove(animal)),
    if (artists.contains(animal)) ...(artists..remove(animal)),
    sixHarmonies[animal]!,
  };
}

Set<Animal> harmonyForLover(Animal animal) {
  return harmonyFor(sixHarmonies[animal]!)..remove(animal);
}

Set<Animal> problematicForZoo(Set<Animal> animals) => {
      for (final animal in animals) ...avoidFor(animal),
    };

Set<Animal> possiblePairsForZoo(Set<Animal> animals) {
  return Animal.values.toSet().difference(
        problematicForZoo(animals),
      );
}

Set<Animal> possiblePairsFor(Animal animal) {
  return Animal.values.toSet().difference(avoidFor(animal));
}

Set<Animal> get clergy => {Animal.Pig, Animal.Rabbit, Animal.Goat};
Set<Animal> get warriors => {Animal.Dragon, Animal.Monkey, Animal.Rat};
Set<Animal> get traders => {Animal.Snake, Animal.Rooster, Animal.Ox};
Set<Animal> get artists => {Animal.Horse, Animal.Dog, Animal.Tiger};

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

Set<Animal> avoidFor(Animal animal) {
  return {
    ...selfPunishment[animal] ?? {},
    ...ungratefulPunishment[animal] ?? {},
    ...bullyingPunishment[animal] ?? {},
    ...rapePunishment[animal] ?? {},
    Animal.values.forward(animal, 6),
  };
}

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

const rapePunishment = <Animal, Set<Animal>>{
  Animal.Rat: {Animal.Rabbit},
  Animal.Rabbit: {Animal.Rat},
};
