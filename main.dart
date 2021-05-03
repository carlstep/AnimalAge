import "dart:math";
import "dart:io";

// a single Map will make it easier to add new animalAgeRatio to the list.
var humanMap = {
    'bear': 2,
    'chicken': 5.33, 
    'cat': 3.2, 
    'dog': 3.64, 
    'elephant': 1.14,
    'human': 1,
    'rabbit': 8.89,
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

double ratio(String ageRatio) {
    print(ageRatio);
    double answerRatio = double.parse(stdin.readLineSync());
    return answerRatio; 
    // the prompt function for userInput <double> 'ratio'
}

void ageCalc() {
    print("In ${howOld} human years - ");
    humanMap.forEach((key, val) {
        print("- a ${key}'s age would be approx. ${(howOld * val).toStringAsFixed(1)} ");
}); // function to return a list of animals in the map + howOld userInput.
}

void addAnimal() {
    // add animal name key
    // add animal ageRatio value
}

int howOld = 0;
String newAnimal = "";
double animalRatio = 0.0;

void main() {
    String animalName = prompt('choose from - ${humanMap.keys}: '); 
    // calls the promptAnimal function, displays the animal names from the Map
    
    // checks if userInput for animalName contains Key in humanMap - if true 
    if (humanMap.containsKey(animalName)) {
        print("your choice is ${animalName}");
        // calls the promptAnimal function, assigns userInput - age - to howOld.
        howOld = age("In human years what is the age of the ${animalName}? ");
        ageCalc();
    } else {
        //print("Choose again!");
        newAnimal = prompt("Type '$animalName' again to add to the list.");
        animalRatio = ratio("Enter a number in decimal format, eg 2.3: ");
        print("$newAnimal and $animalRatio");
        humanMap.putIfAbsent(newAnimal, () => animalRatio);
        print(humanMap);
        main();
        }
  
    
    //${(element.value * howOld).toStringAsFixed(2)}

}

// TODO - create function to call calc (how many calculations/functions are needed 
// TODO - figure out the logic of the age calculations.
// TODO - configure to calc decimals points to month. !!

