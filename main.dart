import "dart:math";
import "dart:io";

// a single Map will make it easier to add new animalAgeRatio to the list.
var humanMap = {
    'Bear': 2,
    'Chicken': 5.33, 
    'Cat': 3.2, 
    'Dog': 3.64, 
    'Elephant': 1.14,
    'Human': 1,
    'Rabbit': 8.89,
    }; // human age ratio Map.

// ageRatioCalc examples - 
// - (animalYear(cat - 8) / human(3.2) = 2.5) * animal(dog - 3.64) = 9.1 (catAge=8, humanAge=2.5, dogAge=9.1) 
// - (animalYear(human - 10) / human(1) = 10) * animal(dog - 3.64) = 36.4 (humanAge=10, humanAge=10, dogAge=36.4)
// - (animalYear(elephant - 10) / human(1) = 8.77) * animal(dog - 3.64) = 31.9 (elephantAge=10, humanAge=8.77, dogAge=31.9)

int age(String promptAge) {
    print(promptAge);
    int answerAge = int.parse(stdin.readLineSync());
    return answerAge; 
    // the prompt function for userInput <int> 'promptAge'
}

String prompt(String promptAnimal) {
    print(promptAnimal);
    String answerAnimal = stdin.readLineSync();
    return answerAnimal; 
    // the prompt function for userInput <String> 'promptAnimal'
}


void main() {
    String animalName = prompt('choose from - ${humanMap.keys}: '); 
    // calls the promptAnimal function, displays the animal names from the Map
  
    int howOld = age("In human years what is the age of the animal? ");
    // calls the promptAnimal function, assigns userInput - age - to howOld.

    humanMap.forEach((key, val) {
        print("In ${howOld} human years, a ${key}'s age would be approx. ${(howOld * val).toStringAsFixed(1)} ");
}); // this returns a a list of animals in the map + howOld userInput.

    //${(element.value * howOld).toStringAsFixed(2)}

}

// TODO - create function to call calc (how many calculations/functions are needed 
// TODO - figure out the logic of the age calculations.
// TODO - configure to calc decimals points to month

