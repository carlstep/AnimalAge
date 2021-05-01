import "dart:math";
import "dart:io";

//var ageRatio = [{dogMap}, {catMap}, {bearMap}, {chickenMap}, {elephantMap}, {humanMap}, {rabbitMap}]; // List of Map

var dogMap = {'Bear': 0.55, 'Cat': 0.88, 'Chicken': 1.47, 'Elephant': 0.31, 'Human': 0.28, 'Rabbit': 2.44}; // dog age ratio Map.

var catMap = {'Bear': 0.63, 'Dog': 1.14, 'Chicken': 1.67, 'Elephant': 0.36, 'Human': 0.31, 'Rabbit': 2.78}; // cat age ratio Map.

var bearMap = {'Bear': 1.6, 'Dog': 1.82, 'Chicken': 2.67, 'Elephant': 0.57, 'Human': 0.5, 'Rabbit': 4.44}; // bear age ratio Map.

var chickenMap = {'Bear': 0.38, 'Dog': 0.68, 'Cat': 0.6, 'Elephant': 0.21, 'Human': 0.19, 'Rabbit': 1.67}; // chicken age ratio Map.

var elephantMap = {'Bear': 1.75, 'Dog': 3.18, 'Chicken': 4.67, 'Cat': 2.8, 'Human': 0.88, 'Rabbit': 7.78}; // elephant age ratio Map.

var humanMap = {'Bear': 2, 'Dog': 3.64, 'Chicken': 5.33, 'Cat': 3.2, 'Elephant': 1.14, 'Rabbit': 8.89}; // human age ratio Map.

var rabbitMap = {'Bear': 0.23, 'Dog': 0.41, 'Chicken': 0.6, 'Cat': 0.36, 'Elephant': 0.13, 'Human': 0.11}; // rabbit age ratio Map.

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
  String animalName = prompt('choose from - dog, bear, cat, chicken, elephant, human, rabbit: '); 
  // calls the promptAnimal function, assigns userInput - animal choice - to animalName.
  
  int howOld = age("In human years what is the age of the animal? ");
  // calls the promptAnimal function, assigns userInput - age - to howOld.

  if(animalName == "dog") {
    dogMap.entries.forEach((element) =>
        print('The relative age for a ${element.key} is approx ${(element.value * howOld).toStringAsFixed(1)}')); // called if userInput is 'dog', takes each k:v entry, assigns to 'element' and prints the key and value(value * howOld). 

    } else if(animalName == "cat") {
    catMap.entries.forEach((element) =>
        print('The relative age for a ${element.key} is approx ${(element.value * howOld).toStringAsFixed(2)}'));
    
    } else if (animalName == "elephant"){
    elephantMap.entries.forEach((element) =>
        print('The relative age for a ${element.key} is approx ${(element.value * howOld).toStringAsFixed(2)}'));

    } else if (animalName == "human") {
    humanMap.entries.forEach((element) =>
        print('The relative age for a ${element.key} is approx ${(element.value * howOld).toStringAsFixed(2)}'));

    } else if (animalName == "chicken") {
    chickenMap.entries.forEach((element) =>
        print('The relative age for a ${element.key} is approx ${(element.value * howOld).toStringAsFixed(2)}'));

    } else if (animalName == "rabbit") {
    rabbitMap.entries.forEach((element) =>
        print('The relative age for a ${element.key} is approx ${(element.value * howOld).toStringAsFixed(2)}'));
    
    } else {
    bearMap.entries.forEach((element) =>
        print('The relative age for a ${element.key} is approx ${(element.value * howOld).toStringAsFixed(2)}'));
    }

}

// DONE - how to take the ratio values of the animal and multiply by a given age 
// DONE - how to asign the key to the output values or (return key:value, value * howOld)?
// DONE - how to make the Age ouput a double with two points only eg 2.75 and not 5.699887 !! used toStringAsFixed(2)
// TODO - can the code be shortened by making a a single function that can be called in the (if/else if) statements
// TODO - convert decimal values into month
// TODO - how to add another animal (with ratios) to the list
