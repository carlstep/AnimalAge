import "dart:math";
import "dart:io";

var ageRatio = [{dogAgeRatio}, {catAgeRatio}, {bearAgeRatio}, {chickenAgeRatio}, {elephantAgeRatio}, {humanAgeRatio}, {rabbitAgeRatio}]; 

var dogAgeRatio = {'dogTobear': 0.55, 'dogTocat': 0.88, 'dogTochicken': 1.47, 'dogToelephant': 0.31, 'dogTohuman': 0.28, 'dogTorabbit': 2.44};

var catAgeRatio = {'catTobear': 0.63, 'catTodog': 1.14, 'catTochicken': 1.67, 'catToelephant': 0.36, 'catTohuman': 0.31, 'catTorabbit': 2.78};

var bearAgeRatio = {'bearTocat': 1.6, 'bearTodog': 1.82, 'bearTochicken': 2.67, 'bearToelephant': 0.57, 'bearTohuman': 0.5, 'bearTorabbit': 4.44};

var chickenAgeRatio = {'chickenTobear': 0.38, 'chickenTodog': 0.68, 'chickenTocat': 0.6, 'chickenToelephant': 0.21, 'chickenTohuman': 0.19, 'chickenTorabbit': 1.67};

var elephantAgeRatio = {'elephantTobear': 1.75, 'elephantTodog': 3.18, 'elephantTochicken': 4.67, 'elephantTocat': 2.8, 'elephantTohuman': 0.88, 'elephantTorabbit': 7.78};

var humanAgeRatio = {'humanTobear': 2, 'humanTodog': 3.64, 'humanTochicken': 5.33, 'humanTocat': 3.2, 'humanToelephant': 1.14, 'humanTorabbit': 8.89};

var rabbitAgeRatio = {'rabbitTobear': 0.23, 'rabbitTodog': 0.41, 'rabbitTochicken': 0.6, 'rabbitTocat': 0.36, 'rabbitToelephant': 0.13, 'rabbitTohuman': 0.11};

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
    print(ageRatio[0]);
    } else if(animalName == "cat") {
    print(catAgeRatio);
    } else if (animalName == "elephant"){
    print(elephantAgeRatio);
    } else if (animalName == "human") {
    print(humanAgeRatio);
    } else if (animalName == "chicken") {
    print(chickenAgeRatio);
    } else if (animalName == "rabbit") {
    print(rabbitAgeRatio);
    } else {
    print(bearAgeRatio);
}


}
