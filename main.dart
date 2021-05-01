import "dart:math";
import "dart:io";

var humanMap = {
    'Bear': 2,
    'Chicken': 5.33, 
    'Cat': 3.2, 
    'Dog': 3.64, 
    'Elephant': 1.14,
    'Human': 1,
    'Rabbit': 8.89,
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

void main() {
    String animalName = prompt('choose from - ${humanMap.keys}: '); 
    // calls the promptAnimal function, displays the animal names from the Map
  
    int howOld = age("In human years what is the age of the animal? ");
    // calls the promptAnimal function, assigns userInput - age - to howOld.

    humanMap.forEach((key, val) {
        print("the animal is ${key} and the age in human years is ${howOld}");
}); // this returns a a list of animals in the map + howOld userInput.

}



