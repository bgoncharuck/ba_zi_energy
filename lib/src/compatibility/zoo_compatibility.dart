import '../animals.dart';

Set<Animal> get wands => {Animal.Pig, Animal.Rabbit, Animal.Goat};
Set<Animal> get swords => {Animal.Dragon, Animal.Monkey, Animal.Rat};
Set<Animal> get coins => {Animal.Snake, Animal.Rooster, Animal.Ox};
Set<Animal> get cups => {Animal.Horse, Animal.Dog, Animal.Tiger};

Set<Animal> get spring => {Animal.Tiger, Animal.Rabbit, Animal.Dragon};
Set<Animal> get summer => {Animal.Snake, Animal.Horse, Animal.Goat};
Set<Animal> get autumn => {Animal.Monkey, Animal.Rooster, Animal.Dog};
Set<Animal> get winter => {Animal.Pig, Animal.Rat, Animal.Ox};

const sixHarmonies = [
  {Animal.Tiger, Animal.Pig},
  {Animal.Rabbit, Animal.Dog},
  {Animal.Dragon, Animal.Rooster},
  {Animal.Snake, Animal.Monkey},
  {Animal.Horse, Animal.Goat},
  {Animal.Ox, Animal.Rat},
];

const halfHarmonies = [
  {Animal.Tiger, Animal.Horse},
  {Animal.Tiger, Animal.Dog},
  {Animal.Horse, Animal.Dog},
  {Animal.Rabbit, Animal.Goat},
  {Animal.Rabbit, Animal.Pig},
  {Animal.Goat, Animal.Pig},
  {Animal.Dragon, Animal.Monkey},
  {Animal.Dragon, Animal.Rat},
  {Animal.Monkey, Animal.Rat},
  {Animal.Snake, Animal.Rooster},
  {Animal.Snake, Animal.Ox},
  {Animal.Rooster, Animal.Ox},
];

const ungratefulPunishment = {Animal.Monkey, Animal.Snake, Animal.Tiger};

const bullyingPunishment = {Animal.Dog, Animal.Ox, Animal.Goat};

const taintPunishment = {Animal.Rabbit, Animal.Rat};

const selfPunishment = {
  Animal.Dragon,
  Animal.Horse,
  Animal.Rooster,
  Animal.Pig,
};

const rivalry = [
  {Animal.Tiger, Animal.Monkey},
  {Animal.Rabbit, Animal.Rooster},
  {Animal.Dragon, Animal.Dog},
  {Animal.Snake, Animal.Pig},
  {Animal.Horse, Animal.Rat},
  {Animal.Goat, Animal.Ox},
];

Animal rivalOf(Animal animal) => Animal.values.forward(animal, 6);

const animalFusion = <Animal, Animal>{
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
  Animal.Ox: Animal.Rat,
};
