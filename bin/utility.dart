// Utility for Mathematical Operations
class MathUtils {
  // Task 1: Sum two numbers
  static int sum(int a, int b) => a + b;

  // Task 6: Find the largest number in a list
  static int findLargest(List<int> numbers) =>
      numbers.reduce((curr, next) => curr > next ? curr : next);
}

// Utility for Loop Demonstrations
class LoopUtils {
  // Task 2: Print numbers from 1 to 10 using a for loop
  static void printOneToTen() {
    for (int i = 1; i <= 10; i++) {
      print(i);
    }
  }

  // Task 4: Print numbers from 20 to 10 using a while loop
  static void printTwentyToTen() {
    int num = 20;
    while (num >= 10) {
      print(num);
      num--;
    }
  }
}

// Utility for Conditional Logic
class ConditionalUtils {
  // Task 3: Switch statement for string values
  static void checkStringValue(String value) {
    switch (value) {
      case "hello":
        print("Hello to you too!");
        break;
      case "bye":
        print("Goodbye!");
        break;
      default:
        print("Unrecognized greeting.");
    }
  }

  // Task 5: If-else statement to check if a number is even or odd
  static void checkEvenOdd(int number) {
    if (number % 2 == 0) {
      print("$number is even.");
    } else {
      print("$number is odd.");
    }
  }
}

// Utility for Exception Handling
class ExceptionHandlingUtils {
  // Task 7: Try-catch block to catch an exception
  static void catchError(Function operation) {
    try {
      operation();
    } catch (e) {
      print("Caught an error: $e");
    }
  }
}

void main() {
  // Using MathUtils
  print("Sum of 5 and 3: ${MathUtils.sum(5, 3)}");
  print("Largest number: ${MathUtils.findLargest([1, 5, 2, 8, 3])}");

  // Using LoopUtils
  LoopUtils.printOneToTen();
  LoopUtils.printTwentyToTen();

  // Using ConditionalUtils
  ConditionalUtils.checkStringValue("hello");
  ConditionalUtils.checkEvenOdd(4);

  // Using ExceptionHandlingUtils
  ExceptionHandlingUtils.catchError(() => print(5 ~/ 0));
}
