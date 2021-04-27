import "dart:math";
import "dart:io";

var ageRatio = [{dogAgeRatio}, {catAgeRatio}]; 

var dogAgeRatio = {'bear': 0.55, 'cat': 0.88, 'chicken': 1.47, 'elephant': 0.31, 'human': 0.28, 'rabbit': 2.44};

var catAgeRatio = {'bear': 0.63, 'dog': 1.14, 'chicken': 1.67, 'elephant': 0.36, 'human': 0.31, 'rabbit': 2.78};

var bearAgeRatio = {'cat': 1.6, 'dog': 1.82, 'chicken': 2.67, 'elephant': 0.57, 'human': 0.5, 'rabbit': 4.44};

var chickenAgeRatio = {'bear': 0.38, 'dog': 0.68, 'cat': 0.6, 'elephant': 0.21, 'human': 0.19, 'rabbit': 1.67};

var elephantAgeRatio = {'bear': 1.75, 'dog': 3.18, 'chicken': 4.67, 'cat': 2.8, 'human': 0.88, 'rabbit': 7.78};

var humanAgeRatio = {'bear': 2, 'dog': 3.64, 'chicken': 5.33, 'cat': 3.2, 'elephant': 1.14, 'rabbit': 8.89};

var rabbitAgeRatio = {'bear': 0.23, 'dog': 0.41, 'chicken': 0.6, 'cat': 0.36, 'elephant': 0.13, 'human': 0.11};

int age(String promptAge) {
    print(promptAge);
    int answerAge = int.parse(stdin.readLineSync());
    return answerAge;
}

String prompt(String promptAnimal) {
    print(promptAnimal);
    String answerAnimal = stdin.readLineSync();
    return answerAnimal;
}

void main() {
  String animalName = prompt('choose from - dog, bear, cat, chicken, elephant, human, rabbit: ');
  
  int howOld = age("What is the age of the animal? ");
  //int animalAge = int.parse(stdin.readLineSync());

  if(animalName == "dog") {
    print(dogAgeRatio);
  } else {
    print(catAgeRatio);
    print(elephantAgeRatio);
    print(humanAgeRatio);
    print(chickenAgeRatio);
    print(rabbitAgeRatio);
    print(bearAgeRatio);
}


}

/*
if dog
- bear - 0.55
- cat - 0.88
- chicken - 1.47
- elephant - 0.31
- human - 0.28
- rabbit - 2.44
*/