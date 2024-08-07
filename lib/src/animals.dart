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
