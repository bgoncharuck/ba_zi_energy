import 'elements.dart';
import 'energies.dart';

enum Animal {
  Tiger,
  Rabbit,
  Dragon,
  Snake,
  Horse,
  Goat,
  Monkey,
  Rooster,
  Dog,
  Pig,
  Rat,
  Ox;

  Energy get energy {
    switch (this) {
      case Animal.Tiger:
        return Energy.WoodYang;

      case Animal.Rabbit:
        return Energy.WoodYin;

      case Animal.Dragon:
        return Energy.EarthYang;

      case Animal.Snake:
        return Energy.FireYin;

      case Animal.Horse:
        return Energy.FireYang;

      case Animal.Goat:
        return Energy.EarthYin;

      case Animal.Monkey:
        return Energy.MetalYang;

      case Animal.Rooster:
        return Energy.MetalYin;

      case Animal.Dog:
        return Energy.EarthYang;

      case Animal.Pig:
        return Energy.WaterYin;

      case Animal.Rat:
        return Energy.WaterYang;

      case Animal.Ox:
        return Energy.EarthYin;

      default:
        throw ArgumentError('Invalid animal: $this');
    }
  }

  /// logic end

  String get western {
    switch (this) {
      case Animal.Tiger:
        return 'aquarius';
      case Animal.Rabbit:
        return 'pisces';
      case Animal.Dragon:
        return 'aries';
      case Animal.Snake:
        return 'taurus';
      case Animal.Horse:
        return 'gemini';
      case Animal.Goat:
        return 'cancer';
      case Animal.Monkey:
        return 'leo';
      case Animal.Rooster:
        return 'virgo';
      case Animal.Dog:
        return 'libra';
      case Animal.Pig:
        return 'scorpio';
      case Animal.Rat:
        return 'sagittarius';
      case Animal.Ox:
        return 'capricorn';
      default:
        throw ArgumentError('Invalid animal: $this');
    }
  }

  @override
  String toString() {
    return name;
  }

  String get toCache {
    return 'Animal.$name';
  }

  Synergy synergy(Energy flavor) {
    return Synergy(this.energy, flavor);
  }
}

class AnimalSynergy {
  const AnimalSynergy({
    required this.animal,
    required this.flavor,
  });
  final Animal animal;
  final Energy flavor;

  Synergy synergy() {
    return animal.synergy(flavor);
  }

  @override
  String toString() {
    return '$flavor $animal';
  }

  static AnimalSynergy fromNumbers(int animal, int energy) {
    return AnimalSynergy(
      animal: Animal.values[animal],
      flavor: Energy.values[energy],
    );
  }

  String get toCache {
    return 'AnimalSynergy(animal: ${animal.toCache}, flavor: ${flavor.toCache})';
  }
}

extension SynergySetExt on Set<AnimalSynergy> {
  bool has(Object? element) {
    if (element is AnimalSynergy) {
      if (this.isEmpty) {
        return true;
      }

      return this.any(
        (s) => s.animal == element.animal && s.flavor == element.flavor,
      );
    }
    return false;
  }
}

Set<AnimalSynergy> createAnimalSet(Set<Animal> animals, Set<Element> elements) {
  if (animals.isEmpty && elements.isEmpty) {
    return {};
  }

  var _animals = animals;
  if (animals.isEmpty) {
    _animals = Animal.values.toSet();
  }
  var _elements = elements;
  if (elements.isEmpty) {
    _elements = Element.values.toSet();
  }
  return {
    for (final animal in _animals)
      for (final element in _elements)
        AnimalSynergy(
          animal: animal,
          flavor: Energy.fromElement(
            element,
            animal.energy.sex,
          ),
        ),
  };
}

const energyToAnimal = <Energy, Animal>{
  Energy.WaterYang: Animal.Rat,
  Energy.WaterYin: Animal.Pig,
  Energy.WoodYang: Animal.Tiger,
  Energy.WoodYin: Animal.Rabbit,
  Energy.FireYang: Animal.Horse,
  Energy.FireYin: Animal.Snake,
  Energy.EarthYang: Animal.Dragon,
  Energy.EarthYin: Animal.Ox,
  Energy.MetalYang: Animal.Monkey,
  Energy.MetalYin: Animal.Rooster,
};

const additionalMaleEarth = Animal.Dog;
const additionalFemaleEarth = Animal.Goat;

Element seasonOfYear(Animal animal) {
  switch (animal) {
    case Animal.Tiger:
    case Animal.Rabbit:
    case Animal.Dragon:
      return Element.Wood;
    case Animal.Snake:
    case Animal.Horse:
    case Animal.Goat:
      return Element.Fire;
    case Animal.Monkey:
    case Animal.Rooster:
    case Animal.Dog:
      return Element.Earth;
    case Animal.Pig:
    case Animal.Rat:
    case Animal.Ox:
      return Element.Water;
  }
}

const Map<Animal, List<Energy>> hiddenAnimalEnergies = {
  Animal.Tiger: [Energy.WoodYang, Energy.FireYang, Energy.EarthYang],
  Animal.Rabbit: [Energy.WoodYin],
  Animal.Dragon: [Energy.EarthYang, Energy.WoodYin, Energy.WaterYin],
  Animal.Snake: [Energy.FireYang, Energy.MetalYang, Energy.EarthYang],
  Animal.Horse: [Energy.FireYin, Energy.EarthYin],
  Animal.Goat: [Energy.EarthYin, Energy.FireYin, Energy.WoodYin],
  Animal.Monkey: [Energy.MetalYang, Energy.WaterYang, Energy.EarthYang],
  Animal.Rooster: [Energy.MetalYin],
  Animal.Dog: [Energy.EarthYang, Energy.MetalYin, Energy.FireYin],
  Animal.Pig: [Energy.WaterYang, Energy.WoodYang],
  Animal.Rat: [Energy.WaterYin],
  Animal.Ox: [Energy.EarthYin, Energy.WaterYin, Energy.MetalYin],
};

const Map<Animal, Animal> nextAnimal = {
  Animal.Tiger: Animal.Rabbit,
  Animal.Rabbit: Animal.Dragon,
  Animal.Dragon: Animal.Snake,
  Animal.Snake: Animal.Horse,
  Animal.Horse: Animal.Goat,
  Animal.Goat: Animal.Monkey,
  //
  Animal.Monkey: Animal.Rooster,
  Animal.Rooster: Animal.Dog,
  Animal.Dog: Animal.Pig,
  Animal.Pig: Animal.Rat,
  Animal.Rat: Animal.Ox,
  Animal.Ox: Animal.Tiger,
};

const Map<Animal, Animal> previousAnimal = {
  Animal.Tiger: Animal.Ox,
  Animal.Rabbit: Animal.Tiger,
  Animal.Dragon: Animal.Rabbit,
  Animal.Snake: Animal.Dragon,
  Animal.Horse: Animal.Snake,
  Animal.Goat: Animal.Horse,
  //
  Animal.Monkey: Animal.Goat,
  Animal.Rooster: Animal.Monkey,
  Animal.Dog: Animal.Rooster,
  Animal.Pig: Animal.Dog,
  Animal.Rat: Animal.Pig,
  Animal.Ox: Animal.Rat,
};

AnimalSynergy nextSynergy(AnimalSynergy synergy) {
  return AnimalSynergy(
    animal: nextAnimal[synergy.animal]!,
    flavor: nextEnergy[synergy.flavor]!,
  );
}

AnimalSynergy previousSynergy(AnimalSynergy synergy) {
  return AnimalSynergy(
      animal: previousAnimal[synergy.animal]!,
      flavor: previousEnergy[synergy.flavor]!);
}
