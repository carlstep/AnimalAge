import "dart:math";
import "dart:io";

var humanMap = {
    'bear': 2,
    'chicken': 5.33, 
    'cat': 3.2, 
    'dog': 3.64, 
    'elephant': 1.14,
    'human': 1,
    'rabbit': 8.89,
    }; // human age ratio Map.

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
    // the prompt function for userInput <double> 'animalRatio'
}

void ageCalc() {
    print("In ${howOld} human years - ");
    humanMap.forEach((key, val) {
        print("- a ${key}'s age would be approx. ${(howOld * val).toStringAsFixed(1)} ");
}); // function to return a list of animals in the map + howOld userInput.
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
        newAnimal = prompt("Type '$animalName' again to add to the list."); // adds a new animal key to animalName
        animalRatio = ratio("Enter a number in decimal format, eg 2.3: "); // adds ratio value to animalRatio
        print("$newAnimal and $animalRatio");
        humanMap.putIfAbsent(newAnimal, () => animalRatio); // puts the new animal:ratio (k,v) pair into the humanMap.
        print(humanMap);
        main();
        }
}

// TODO - create function to call calc (how many calculations/functions are needed 
// TODO - figure out the logic of the age calculations.
// TODO - configure to calc decimals points to month. !!

