import 'dart:io';
import 'dart:math';

// Map of questions and answers
Map<int, String> questions = {
  1: "What is the capital of France?",
  2: "How many continents are there?",
  3: "What is the capital of pakisatn?",
  4: "How many colors are in the rainbow?",
  5: "Which planet is the hottest?",
  6: "What color is a ruby?",
  7: "Which planet is closest to the sun?",
  8: "How many legs does a spider have?",
  9: "What is something you hit with a hammer?",
  10: "What's the name of a place you go to see lots of animals?",
  11: "Whose nose grew longer every time he lied?",
  12: "If you freeze water, what do you get?",
  13: "How many planets are in our solar system?",
  14: " What do caterpillars turn into?",
  15: "question",
  16: "question",
  17: "question",
  18: "question",
  19: "question",
  20: "question"

  // Add more questions here
};

Map<int, String> answers = {
  1: "Paris",
  2: "7",
  3: "Islamabad",
  4: "7",
  5: "Mercury",
  6: "Red",
  7: "Mercury",
  8: "8",
  9: "Nail",
  10: "Zoo",
  11: "Pinocchio",
  12: "Ice",
  13: "8",
  14: "Butterfuy",
  15: "Answer",
  16: "Answer",
  17: "Answer",
  18: "Answer",
  19: "Answer",
  20: "Answer"

  // Add more answers here
};

// Function to start the quiz
void startQuiz() {
  List<int> randList = generateRandomQuestions();
  int correctAnswers = 0;

  for (int i = 0; i < 20; i++) {
    int questionIndex = randList[i];
    String question = questions[questionIndex];
    String correctAnswer = answers[questionIndex];

    print("Question ${i + 1}: $question");
    String userAnswer = getUserInput();

    if (userAnswer.toLowerCase() == correctAnswer.toLowerCase()) {
      correctAnswers++;
    }
  }

  double percentage = (correctAnswers / 20) * 100;
  displayResult(correctAnswers, percentage);
}

// Function to generate a list of 20 random question indices
List<int> generateRandomQuestions() {
  int max = questions.length;
  List<int> randList = [];
  Random random = Random();

  while (randList.length < 20) {
    int randIndex = random.nextInt(max) + 1;
    if (!randList.contains(randIndex)) {
      randList.add(randIndex);
    }
  }

  return randList;
}

// Function to get user input
String getUserInput() {
  print("Your Answer: ");
  return stdin.readLineSync() ?? "";
}

// Function to display the result
void displayResult(int correctAnswers, double percentage) {
  print("\n----- Quiz Results -----");
  print("Total number of correct answers: $correctAnswers");
  print("Percentage of correct answers: ${percentage.toStringAsFixed(2)}%");

  if (percentage > 50) {
    print("Congratulations! You passed the quiz.");
  } else {
    print("Better luck next time.");
  }

  print("\nDo you want to restart the quiz? (yes/no)");
  String restartChoice = stdin.readLineSync()?.toLowerCase() ?? "";

  if (restartChoice == "yes") {
    startQuiz();
  } else {
    print("Thank you for playing!");
  }
}

void main() {
  print("Welcome to the Quiz App!");
  print("You will be asked 20 random questions.");
  print("Please answer each question. Type 'quit' to exit at any time.\n");

  startQuiz();
}
